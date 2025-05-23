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
TARGET_TABLE = "acme_ward_wise_mother_tongue_population"

def map_language_type(nepali_language):
    """
    Map Nepali language names to standardized enum values.
    """
    mapping = {
        'नेपाली': 'NEPALI',
        'मैथिली': 'MAITHILI',
        'भोजपुरी': 'BHOJPURI',
        'थारु': 'THARU',
        'तामाङ': 'TAMANG',
        'नेवारी': 'NEWARI',
        'मगर': 'MAGAR',
        'बज्जिका': 'BAJJIKA',
        'उर्दु': 'URDU',
        'हिन्दी': 'HINDI',
        'लिम्बु': 'LIMBU',
        'राई': 'RAI',
        'गुरुङ': 'GURUNG',
        'शेर्पा': 'SHERPA',
        'डोटेली': 'DOTELI',
        'अवधी': 'AWADI',
        'अन्य': 'OTHER'
    }
    
    # Clean up the input string by removing whitespace
    clean_language = nepali_language.strip() if isinstance(nepali_language, str) else nepali_language
    
    # Return the mapped value if available, otherwise return 'OTHER'
    return mapping.get(clean_language, 'OTHER')

def create_insert_data(ward_number, language_type, population):
    """
    Create a data dictionary for insertion specific to mother tongue population.
    """
    return {
        'id': generate_uuid(),
        'ward_number': int(ward_number),
        'language_type': language_type,
        'population': int(population),
        'updated_at': get_current_timestamp(),
        'created_at': get_current_timestamp()
    }

def generate_insert_statement(data):
    """
    Generate an SQL insert statement from a data dictionary specific to mother tongue population.
    """
    return f"""
    INSERT INTO {TARGET_TABLE} 
    (id, ward_number, language_type, population, updated_at, created_at)
    VALUES (
        '{data['id']}',
        {data['ward_number']},
        '{data['language_type']}',
        {data['population']},
        '{data['updated_at']}',
        '{data['created_at']}'
    );
    """

def generate_table_create_statement():
    """
    Generate SQL to create the ward_wise_mother_tongue_population table if it doesn't exist.
    """
    return f"""
-- Check if {TARGET_TABLE} table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = '{TARGET_TABLE}'
    ) THEN
        -- Create enum type for language types if not exists
        IF NOT EXISTS (
            SELECT 1 FROM pg_type WHERE typname = 'language_type_enum'
        ) THEN
            CREATE TYPE language_type_enum AS ENUM (
                'NEPALI', 'MAITHILI', 'BHOJPURI', 'THARU', 'TAMANG', 
                'NEWARI', 'MAGAR', 'BAJJIKA', 'URDU', 'HINDI', 
                'LIMBU', 'RAI', 'GURUNG', 'SHERPA', 'DOTELI', 
                'AWADI', 'OTHER'
            );
        END IF;

        CREATE TABLE {TARGET_TABLE} (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            language_type language_type_enum NOT NULL,
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

def extract_mother_tongue_data(source_conn):
    """Extract mother tongue population data from source database."""
    logger.info("Extracting mother tongue population data")
    
    # Query to get ward and mother tongue distribution
    query = """
    SELECT 
        ward_no, 
        mother_tongue,
        COUNT(*) as population
    FROM 
        khajura_individual
    WHERE 
        mother_tongue IS NOT NULL
    GROUP BY 
        ward_no, mother_tongue
    ORDER BY 
        ward_no, mother_tongue;
    """
    
    # Execute the query
    df = execute_query(source_conn, query)
    logger.info(f"Extracted mother tongue data with {len(df)} ward-language combinations")
    
    return df

def transform_mother_tongue_data(df):
    """Transform the extracted data into the required format."""
    logger.info("Transforming mother tongue population data")
    
    # Ensure ward_no is integer type
    df['ward_no'] = df['ward_no'].astype(int)
    
    # Map Nepali language names to standardized enum values
    df['language_type_mapped'] = df['mother_tongue'].apply(map_language_type)
    
    # Ensure population is integer type
    df['population'] = df['population'].astype(int)
    
    # Group by ward and mapped language to sum populations
    # (in case multiple Nepali terms map to same enum)
    grouped_df = df.groupby(['ward_no', 'language_type_mapped'])['population'].sum().reset_index()
    
    logger.info(f"Transformed into {len(grouped_df)} ward-language combinations")
    
    return grouped_df

def load_mother_tongue_data(df, target_conn, generate_sql=True):
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
            language_type=row['language_type_mapped'],
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

def process_mother_tongue_population(source_conn, target_conn, generate_sql=True):
    """Process ward-wise mother tongue population data from extraction to loading."""
    logger.info("Processing ward-wise mother tongue population data")
    
    try:
        # Extract data
        df = extract_mother_tongue_data(source_conn)
        
        # Transform data
        transformed_df = transform_mother_tongue_data(df)
        
        # Load data
        load_mother_tongue_data(transformed_df, target_conn, generate_sql)
        
        logger.info("Completed processing ward-wise mother tongue population data")
        return True
    except Exception as e:
        logger.error(f"Error processing ward-wise mother tongue population data: {e}")
        return False
