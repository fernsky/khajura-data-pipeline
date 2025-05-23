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
TARGET_TABLE = "acme_ward_wise_househead_gender"

def map_gender(nepali_gender):
    """
    Map Nepali gender terms to standardized enum values.
    """
    mapping = {
        'पुरुष': 'MALE',
        'महिला': 'FEMALE',
        'अन्य': 'OTHER'
    }
    
    # Clean up the input string by removing whitespace
    clean_gender = nepali_gender.strip() if isinstance(nepali_gender, str) else nepali_gender
    
    # Return the mapped value if available, otherwise return 'OTHER'
    return mapping.get(clean_gender, 'OTHER')

def create_insert_data(ward_number, gender, population, ward_name=None):
    """
    Create a data dictionary for insertion specific to househead gender.
    """
    return {
        'id': generate_uuid(),
        'ward_number': int(ward_number),
        'ward_name': ward_name,
        'gender': gender,
        'population': int(population),
        'updated_at': get_current_timestamp(),
        'created_at': get_current_timestamp()
    }

def generate_insert_statement(data):
    """
    Generate an SQL insert statement from a data dictionary specific to househead gender.
    """
    ward_name_value = f"'{data['ward_name']}'" if data['ward_name'] else "NULL"
    return f"""
    INSERT INTO {TARGET_TABLE} 
    (id, ward_number, ward_name, gender, population, updated_at, created_at)
    VALUES (
        '{data['id']}',
        {data['ward_number']},
        {ward_name_value},
        '{data['gender']}',
        {data['population']},
        '{data['updated_at']}',
        '{data['created_at']}'
    );
    """

def generate_table_create_statement():
    """
    Generate SQL to create the ward_wise_househead_gender table if it doesn't exist.
    """
    return f"""
-- Set UTF-8 encoding for this script
SET client_encoding = 'UTF8';

-- Create gender enum type if not exists
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'gender') THEN
        CREATE TYPE gender AS ENUM ('MALE', 'FEMALE', 'OTHER');
    END IF;
END
$$;

-- Create {TARGET_TABLE} table if not exists
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_tables WHERE tablename = '{TARGET_TABLE}') THEN
        CREATE TABLE {TARGET_TABLE} (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            ward_name VARCHAR(100),
            gender gender NOT NULL,
            population INTEGER NOT NULL DEFAULT 0,
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
        
        -- Create index for faster lookups by ward number and gender
        CREATE INDEX idx_ward_househead_gender ON {TARGET_TABLE}(ward_number, gender);
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

def extract_househead_gender_data(source_conn):
    """Extract household head gender data from source database."""
    logger.info("Extracting household head gender data")
    
    # Query to get ward and gender of household heads
    query = """
    SELECT 
        ward_no, 
        gender,
        COUNT(*) as population
    FROM 
        khajura_household
    WHERE 
        gender IS NOT NULL
    GROUP BY 
        ward_no, gender
    ORDER BY 
        ward_no, gender;
    """
    
    # Execute the query
    df = execute_query(source_conn, query)
    logger.info(f"Extracted household head gender data with {len(df)} ward-gender combinations")
    
    return df

def transform_househead_gender_data(df):
    """Transform the extracted data into the required format."""
    logger.info("Transforming household head gender data")
    
    # Ensure ward_no is integer type
    df['ward_no'] = df['ward_no'].astype(int)
    
    # Map Nepali gender terms to standardized enum values
    df['gender_mapped'] = df['gender'].apply(map_gender)
    
    # Ensure population is integer type
    df['population'] = df['population'].astype(int)
    
    logger.info(f"Transformed household head gender data with {len(df)} ward-gender combinations")
    
    return df

def load_househead_gender_data(df, target_conn, generate_sql=True):
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
            gender=row['gender_mapped'],
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

def process_househead_gender(source_conn, target_conn, generate_sql=True):
    """Process ward-wise household head gender data from extraction to loading."""
    logger.info("Processing ward-wise household head gender data")
    
    try:
        # Extract data
        df = extract_househead_gender_data(source_conn)
        
        # Transform data
        transformed_df = transform_househead_gender_data(df)
        
        # Load data
        load_househead_gender_data(transformed_df, target_conn, generate_sql)
        
        logger.info("Completed processing ward-wise household head gender data")
        return True
    except Exception as e:
        logger.error(f"Error processing ward-wise household head gender data: {e}")
        return False
