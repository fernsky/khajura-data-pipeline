import pandas as pd
import logging
import os
from utils.database import execute_query, table_exists, table_has_data, insert_data_to_db, save_sql_to_file
from utils.transformers import generate_uuid, get_current_timestamp
from config import HEALTH_SQL_DIR

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

# Target table name
TARGET_TABLE = "acme_ward_wise_health_insured_households"

def create_insert_data(ward_number, insured_households):
    """
    Create a data dictionary for insertion specific to health insured households.
    """
    return {
        'id': generate_uuid(),
        'ward_number': int(ward_number),
        'insured_households': int(insured_households),
        'updated_at': get_current_timestamp(),
        'created_at': get_current_timestamp()
    }

def generate_insert_statement(data):
    """
    Generate an SQL insert statement from a data dictionary specific to health insured households.
    """
    return f"""
    INSERT INTO {TARGET_TABLE} 
    (id, ward_number, insured_households, updated_at, created_at)
    VALUES (
        '{data['id']}',
        {data['ward_number']},
        {data['insured_households']},
        '{data['updated_at']}',
        '{data['created_at']}'
    );
    """

def generate_table_create_statement():
    """
    Generate SQL to create the ward_wise_health_insured_households table if it doesn't exist.
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
            ward_number INTEGER NOT NULL UNIQUE,
            insured_households INTEGER NOT NULL,
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

def extract_health_insured_households_data(source_conn):
    """Extract health insured households data from source database."""
    logger.info("Extracting health insured households data")
    
    # Query to get count of households with health insurance by ward
    # Using the Nepali values "छ" for yes and "छैन" for no as mentioned
    query = """
    SELECT 
        ward_no,
        COUNT(*) as insured_households_count
    FROM 
        khajura_household
    WHERE 
        have_health_insurance = 'छ'
    GROUP BY 
        ward_no
    ORDER BY 
        ward_no;
    """
    
    # Execute the query
    df = execute_query(source_conn, query)
    logger.info(f"Extracted health insured households data for {len(df)} wards")
    
    return df

def transform_health_insured_households_data(df):
    """Transform the extracted data into the required format."""
    logger.info("Transforming health insured households data")
    
    # Ensure ward_no is integer type
    df['ward_no'] = df['ward_no'].astype(int)
    
    # Ensure insured_households_count is integer type
    df['insured_households_count'] = df['insured_households_count'].astype(int)
    
    logger.info(f"Transformed health insured households data with {len(df)} ward combinations")
    
    return df

def load_health_insured_households_data(df, target_conn, generate_sql=True):
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
            insured_households=row['insured_households_count']
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
        sql_file_path = os.path.join(HEALTH_SQL_DIR, f"{TARGET_TABLE}.sql")
        
        # Save to file
        save_sql_to_file(full_sql_script, sql_file_path)
    
    # Insert data into target database
    success = insert_data_to_db(target_conn, insert_statements)
    
    if success:
        logger.info(f"Successfully loaded {len(insert_data)} records into {TARGET_TABLE}")
    
    return success

def process_health_insured_households(source_conn, target_conn, generate_sql=True):
    """Process ward-wise health insured households data from extraction to loading."""
    logger.info("Processing ward-wise health insured households data")
    
    try:
        # Extract data
        df = extract_health_insured_households_data(source_conn)
        
        # Transform data
        transformed_df = transform_health_insured_households_data(df)
        
        # Load data
        load_health_insured_households_data(transformed_df, target_conn, generate_sql)
        
        logger.info("Completed processing ward-wise health insured households data")
        return True
    except Exception as e:
        logger.error(f"Error processing ward-wise health insured households data: {e}")
        return False
