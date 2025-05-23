import pandas as pd
import logging
import os
from utils.database import execute_query, table_exists, table_has_data, insert_data_to_db, save_sql_to_file
from utils.transformers import generate_uuid, get_current_timestamp
from config import DEMOGRAPHICS_SQL_DIR

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

# Target table name
TARGET_TABLE = "acme_ward_wise_caste_population"

def map_caste_type(caste):
    """
    Map caste names to standardized values.
    """
    # The mapping here is identity as the caste values from the source match the target
    # If needed, add mappings for variations or corrections
    return caste

def create_insert_data(ward_number, caste_type, population):
    """
    Create a data dictionary for insertion specific to caste population.
    """
    return {
        'id': generate_uuid(),
        'ward_number': int(ward_number),
        'caste_type': caste_type,
        'population': int(population),
        'updated_at': get_current_timestamp(),
        'created_at': get_current_timestamp()
    }

def generate_insert_statement(data):
    """
    Generate an SQL insert statement from a data dictionary specific to caste population.
    """
    return f"""
    INSERT INTO {TARGET_TABLE} 
    (id, ward_number, caste_type, population, updated_at, created_at)
    VALUES (
        '{data['id']}',
        {data['ward_number']},
        '{data['caste_type']}',
        {data['population']},
        '{data['updated_at']}',
        '{data['created_at']}'
    );
    """

def generate_table_create_statement():
    """
    Generate SQL to create the ward_wise_caste_population table if it doesn't exist.
    """
    return f"""
-- Check if {TARGET_TABLE} table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = '{TARGET_TABLE}'
    ) THEN
        CREATE TABLE {TARGET_TABLE} (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            caste_type VARCHAR(100) NOT NULL,
            population INTEGER,
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
    END IF;
END
$$;

-- Insert data only if table is empty
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM {TARGET_TABLE}) THEN
"""

def generate_closing_statement():
    """Generate the closing SQL statement for conditional insert."""
    return """
    END IF;
END
$$;
"""

def extract_caste_population_data(source_conn):
    """Extract caste population data from source database."""
    logger.info("Extracting caste population data")
    
    # Query to get ward, caste and population count
    query = """
    SELECT 
        ward_no, 
        caste_ethnicity,
        COUNT(*) as population
    FROM 
        khajura_individual
    WHERE 
        caste_ethnicity IS NOT NULL
    GROUP BY 
        ward_no, caste_ethnicity
    ORDER BY 
        ward_no, caste_ethnicity;
    """
    
    # Execute the query
    df = execute_query(source_conn, query)
    logger.info(f"Extracted caste population data with {len(df)} ward-caste combinations")
    
    return df

def transform_caste_population_data(df):
    """Transform the extracted data into the required format."""
    logger.info("Transforming caste population data")
    
    # Ensure ward_no is integer type
    df['ward_no'] = df['ward_no'].astype(int)
    
    # Map caste types to standardized values if needed
    df['caste_type_mapped'] = df['caste_ethnicity'].apply(map_caste_type)
    
    # Ensure population is integer type
    df['population'] = df['population'].astype(int)
    
    # Group by ward and mapped caste type to sum populations (in case multiple terms map to same type)
    grouped_df = df.groupby(['ward_no', 'caste_type_mapped'])['population'].sum().reset_index()
    
    logger.info(f"Transformed caste population data with {len(grouped_df)} ward-caste combinations")
    
    return grouped_df

def load_caste_population_data(df, target_conn, generate_sql=True):
    """Load the transformed data into the target database and optionally generate SQL file."""
    logger.info(f"Preparing to load data into {TARGET_TABLE}")
    
    # Check if table exists and has data
    if table_exists(target_conn, TARGET_TABLE) and table_has_data(target_conn, TARGET_TABLE):
        logger.info(f"Table {TARGET_TABLE} already exists and has data. Skipping insertion.")
        return False
    
    # Prepare insert data
    insert_data = []
    insert_statements = []
    
    for _, row in df.iterrows():
        # Create data dictionary
        data = create_insert_data(
            ward_number=row['ward_no'],
            caste_type=row['caste_type_mapped'],
            population=row['population']
        )
        insert_data.append(data)
        
        # Generate SQL statement
        statement = generate_insert_statement(data)
        insert_statements.append(statement)
    
    # Save SQL to file if requested
    if generate_sql:
        # Create the full SQL script with create table and conditional insertion
        full_sql_script = []
        full_sql_script.append(generate_table_create_statement())
        full_sql_script.extend(insert_statements)
        full_sql_script.append(generate_closing_statement())
        
        # Define the output file path
        sql_file_path = os.path.join(DEMOGRAPHICS_SQL_DIR, f"{TARGET_TABLE}.sql")
        
        # Save to file
        save_sql_to_file(full_sql_script, sql_file_path)
    
    # Insert data into target database
    success = insert_data_to_db(target_conn, insert_statements)
    
    if success:
        logger.info(f"Successfully loaded {len(insert_data)} records into {TARGET_TABLE}")
    
    return success

def process_caste_population(source_conn, target_conn, generate_sql=True):
    """Process ward-wise caste population data from extraction to loading."""
    logger.info("Processing ward-wise caste population data")
    
    try:
        # Extract data
        df = extract_caste_population_data(source_conn)
        
        # Transform data
        transformed_df = transform_caste_population_data(df)
        
        # Load data
        load_caste_population_data(transformed_df, target_conn, generate_sql)
        
        logger.info("Completed processing ward-wise caste population data")
        return True
    except Exception as e:
        logger.error(f"Error processing ward-wise caste population data: {e}")
        return False
