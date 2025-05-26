import pandas as pd
import logging
import os
from utils.database import execute_query, table_exists, table_has_data, insert_data_to_db, save_sql_to_file
from utils.transformers import generate_uuid, get_current_timestamp
from config import PHYSICAL_SQL_DIR

# Setting up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'   
)

logger = logging.getLogger(__name__)

# Outer wall type mappings
OUTER_WALL_TYPE_MAPPING = {
    'सिमेन्टको जोडाइ भएको इँटा/ढुङ्गा': 'CEMENT_JOINED',
    'काँचो इँटा': 'UNBAKED_BRICK',
    'माटोको जोडाइ भएको इँटा/ढुङ्गा': 'MUD_JOINED',
    'जस्ता/टिन/च्यादर': 'TIN',
    'बाँसजन्य सामग्री': 'BAMBOO',
    'काठ/फल्याक': 'WOOD',
    'प्रि फ्याब': 'PREFAB',
    'अन्य (खुलाउने)': 'OTHER',

    # English variants
    'cement joined': 'CEMENT_JOINED',
    'unbaked brick': 'UNBAKED_BRICK',
    'mud joined': 'MUD_JOINED',
    'tin': 'TIN',
    'bamboo': 'BAMBOO',
    'wood': 'WOOD',
    'prefab': 'PREFAB',
    'other': 'OTHER',
    
    # Handle nulls and empty strings
    None: 'OTHER',
    '': 'OTHER'
}

TARGET_TABLE = 'acme_ward_wise_household_outer_wall'

def map_wall_type(wall_type):
    """Map outer wall type values to standardized enum values."""
    if not wall_type or pd.isna(wall_type):
        return "OTHER"
    
    # Try direct mapping
    standardized = OUTER_WALL_TYPE_MAPPING.get(wall_type)
    if standardized:
        return standardized
    
    # Try lowercase matching
    wall_type_lower = str(wall_type).lower().strip()
    for key, value in OUTER_WALL_TYPE_MAPPING.items():
        if key and isinstance(key, str) and key.lower() == wall_type_lower:
            return value
    
    # Default
    logger.warning(f"Wall type '{wall_type}' not found in mapping. Using 'OTHER' as default.")
    return "OTHER"

def extract_household_outer_wall_data(source_conn):
    """Extracts household outer wall data from the database."""
    logger.info("Extracting household outer wall data now")

    query="""
    SELECT
        ward_no,
        house_outer_wall,
        COUNT(*) as households
    FROM
        khajura_household
    WHERE
        house_outer_wall IS NOT NULL
    GROUP BY
        ward_no, house_outer_wall
    ORDER BY
        ward_no, house_outer_wall
    """

    # Execute the query
    df = execute_query(source_conn, query)
    logger.info(f"Extracted {len(df)} rows of household outer wall data")
    return df

def transform_household_outer_wall_data(df):
    logger.info("Transforming household outer wall data now")

    # Ensure ward_no is integer type
    df['ward_no'] = df['ward_no'].astype(int)
    
    # Map wall types to standardized values
    df['wall_type_mapped'] = df['house_outer_wall'].apply(map_wall_type)
    
    # Ensure households is integer type
    df['households'] = df['households'].astype(int)
    
    # Group by ward and mapped wall type to sum households
    grouped_df = df.groupby(['ward_no', 'wall_type_mapped'])['households'].sum().reset_index()
    
    logger.info(f"Transformed data into {len(grouped_df)} ward-wall type combinations")
    return grouped_df

def create_insert_data(ward_number, wall_type, households):
    """Create a data dictionary for insertion specific to household outer wall data."""
    return {
        'id': generate_uuid(),
        'ward_number': int(ward_number),
        'wall_type': wall_type,
        'households': int(households),
        'created_at': get_current_timestamp(),
        'updated_at': get_current_timestamp()
    }

def generate_insert_statement(data):
    """Generate an SQL insert statement from a data dictionary specific to household outer wall data."""
    return f"""
    INSERT INTO {TARGET_TABLE} 
    (id, ward_number, wall_type, households, created_at, updated_at)
    VALUES (
        '{data['id']}',
        {data['ward_number']},
        '{data['wall_type']}',
        {data['households']},
        '{data['created_at']}',
        '{data['updated_at']}'
    );
    """

def generate_table_create_statement():
    """Generate SQL to create the ward_wise_household_outer_wall table if it doesn't exist."""
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
            wall_type VARCHAR(100) NOT NULL,
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

def load_household_outer_wall_data(df, target_conn, generate_sql=True):
    """Load the transformed household outer wall data into the target database."""
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
            wall_type=row['wall_type_mapped'],
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
        sql_file_path = os.path.join(PHYSICAL_SQL_DIR, f"{TARGET_TABLE}.sql")
        
        # Save to file
        save_sql_to_file(full_sql_script, sql_file_path)
        logger.info(f"SQL file generated at {sql_file_path}")
    
    # Insert data into target database
    success = insert_data_to_db(target_conn, insert_statements)
    
    if success:
        logger.info(f"Successfully loaded {len(insert_data)} records into {TARGET_TABLE}")
    
    return success

def process_ward_wise_household_outer_wall(source_conn, target_conn, generate_sql=True):
    """Process ward-wise household outer wall data from extraction to loading."""
    logger.info("Processing ward-wise household outer wall data")
    
    try:
        # Extract data
        df = extract_household_outer_wall_data(source_conn)
        
        # Transform data
        transformed_df = transform_household_outer_wall_data(df)
        
        # Load data
        load_household_outer_wall_data(transformed_df, target_conn, generate_sql)
        
        logger.info("Completed processing ward-wise household outer wall data")
        return True
    except Exception as e:
        logger.error(f"Error processing ward-wise household outer wall data: {e}")
        return False
