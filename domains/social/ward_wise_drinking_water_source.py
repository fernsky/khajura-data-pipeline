import pandas as pd
import logging
import os
from utils.database import execute_query, table_exists, table_has_data, insert_data_to_db, save_sql_to_file
from utils.transformers import generate_uuid, get_current_timestamp
from config import SOCIAL_SQL_DIR

# Setting up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'   
)

logger = logging.getLogger(__name__)

# Drinking water source mappings
WATER_SOURCE_MAPPING = {
    '  धारा/पाइप (घरपरिसर भित्र)': 'TAP_INSIDE_HOUSE',
    '  धारा/पाइप (घरपरिसर) बाहिर)': 'TAP_OUTSIDE_HOUSE',
    '  ट्युबवेल/हाते पम्प': 'TUBEWELL',
    '  ढाकिएको इनार/कुवा': 'COVERED_WELL',
    '  खुला इनार/कुवा': 'OPEN_WELL',
    '  मूल धारा': 'AQUIFIER_MOOL',
    '  नदी/खोला': 'RIVER',
    '  जार/बोतल': 'JAR',
    '  अन्य (खुलाउने)': 'OTHER',

    # English variants
    'tap inside house': 'TAP_INSIDE_HOUSE',
    'tap outside house': 'TAP_OUTSIDE_HOUSE',
    'tubewell': 'TUBEWELL',
    'covered well': 'COVERED_WELL',
    'open well': 'OPEN_WELL',
    'aquifier mool': 'AQUIFIER_MOOL',
    'mool dhara': 'AQUIFIER_MOOL',
    'river': 'RIVER',
    'jar': 'JAR',
    'other': 'OTHER',
    
    # Handle nulls and empty strings
    None: 'OTHER',
    '': 'OTHER'
}

TARGET_TABLE = 'acme_ward_wise_drinking_water_source'

def map_water_source(water_source):
    """Map drinking water source values to standardized enum values."""
    if not water_source or pd.isna(water_source):
        return "OTHER"
    
    # Try direct mapping
    standardized = WATER_SOURCE_MAPPING.get(water_source)
    if standardized:
        return standardized
    
    # Try lowercase matching
    water_source_lower = str(water_source).lower().strip()
    for key, value in WATER_SOURCE_MAPPING.items():
        if key and isinstance(key, str) and key.lower() == water_source_lower:
            return value
    
    # Default
    logger.warning(f"Water source '{water_source}' not found in mapping. Using 'OTHER' as default.")
    return "OTHER"

def extract_drinking_water_source_data(source_conn):
    """Extracts drinking water source data from the database."""
    logger.info("Extracting drinking water source data now")

    query="""
    SELECT
        ward_no,
        water_source,
        COUNT(*) as households
    FROM
        khajura_household
    WHERE
        water_source IS NOT NULL
    GROUP BY
        ward_no, water_source
    ORDER BY
        ward_no, water_source
    """

    # Execute the query
    df = execute_query(source_conn, query)
    logger.info(f"Extracted {len(df)} rows of drinking water source data")
    return df

def transform_drinking_water_source_data(df):
    logger.info("Transforming drinking water source data now")

    # Ensure ward_no is integer type
    df['ward_no'] = df['ward_no'].astype(int)
    
    # Map water sources to standardized values
    df['water_source_mapped'] = df['water_source'].apply(map_water_source)
    
    # Ensure households is integer type
    df['households'] = df['households'].astype(int)
    
    # Group by ward and mapped water source to sum households
    grouped_df = df.groupby(['ward_no', 'water_source_mapped'])['households'].sum().reset_index()
    
    logger.info(f"Transformed data into {len(grouped_df)} ward-water source combinations")
    return grouped_df

def create_insert_data(ward_number, water_source, households):
    """Create a data dictionary for insertion specific to drinking water source data."""
    return {
        'id': generate_uuid(),
        'ward_number': int(ward_number),
        'drinking_water_source': water_source,
        'households': int(households),
        'created_at': get_current_timestamp(),
        'updated_at': get_current_timestamp()
    }

def generate_insert_statement(data):
    """Generate an SQL insert statement from a data dictionary specific to drinking water source data."""
    return f"""
    INSERT INTO {TARGET_TABLE} 
    (id, ward_number, drinking_water_source, households, created_at, updated_at)
    VALUES (
        '{data['id']}',
        {data['ward_number']},
        '{data['drinking_water_source']}',
        {data['households']},
        '{data['created_at']}',
        '{data['updated_at']}'
    );
    """

def generate_table_create_statement():
    """Generate SQL to create the ward_wise_drinking_water_source table if it doesn't exist."""
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
            drinking_water_source VARCHAR(100) NOT NULL,
            households INTEGER NOT NULL,
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

def load_drinking_water_source_data(df, target_conn, generate_sql=True):
    """Load the transformed drinking water source data into the target database."""
    logger.info(f"Loading data into {TARGET_TABLE}")

    # Check if table exists and has data
    if table_exists(target_conn, TARGET_TABLE) and table_has_data(target_conn, TARGET_TABLE):
        logger.info(f"Table {TARGET_TABLE} already exists and has data. Skipping insertion.")
        return False

    # Prepare insert data and statements
    insert_data = []
    insert_statements = []

    for _, row in df.iterrows():
        # Create data dictionary
        data = create_insert_data(
            ward_number=row['ward_no'],
            water_source=row['water_source_mapped'],
            households=row['households']
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
        sql_file_path = os.path.join(SOCIAL_SQL_DIR, f"{TARGET_TABLE}.sql")
        
        # Save to file
        save_sql_to_file(full_sql_script, sql_file_path)
        logger.info(f"SQL file generated at {sql_file_path}")
    
    # Insert data into target database
    success = insert_data_to_db(target_conn, insert_statements)
    
    if success:
        logger.info(f"Successfully loaded {len(insert_data)} records into {TARGET_TABLE}")
    
    return success

def process_ward_wise_drinking_water_source(source_conn, target_conn, generate_sql=True):
    """Process ward-wise drinking water source data from extraction to loading."""
    logger.info("Processing ward-wise drinking water source data")
    
    try:
        # Extract data
        df = extract_drinking_water_source_data(source_conn)
        
        # Transform data
        transformed_df = transform_drinking_water_source_data(df)
        
        # Load data
        load_drinking_water_source_data(transformed_df, target_conn, generate_sql)
        
        logger.info("Completed processing ward-wise drinking water source data")
        return True
    except Exception as e:
        logger.error(f"Error processing ward-wise drinking water source data: {e}")
        return False
