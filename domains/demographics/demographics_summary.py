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
TARGET_TABLE = "acme_demographic_summary"

def create_insert_data(demographic_data):
    """
    Create a data dictionary for insertion into demographic summary.
    """
    return {
        'id': 'singleton',
        'total_population': demographic_data.get('total_population', 0),
        'population_male': demographic_data.get('population_male', 0),
        'population_female': demographic_data.get('population_female', 0),
        'population_other': demographic_data.get('population_other', 0),
        'population_absentee_total': demographic_data.get('population_absentee_total', 0),
        'population_male_absentee': demographic_data.get('population_male_absentee', 0),
        'population_female_absentee': demographic_data.get('population_female_absentee', 0),
        'population_other_absentee': demographic_data.get('population_other_absentee', 0),
        'sex_ratio': demographic_data.get('sex_ratio', 0),
        'total_households': demographic_data.get('total_households', 0),
        'average_household_size': demographic_data.get('average_household_size', 0),
        'population_density': demographic_data.get('population_density', 0),
        'population_0_to_14': demographic_data.get('population_0_to_14', 0),
        'population_15_to_59': demographic_data.get('population_15_to_59', 0),
        'population_60_and_above': demographic_data.get('population_60_and_above', 0),
        'growth_rate': demographic_data.get('growth_rate', 0),
        'literacy_rate_above_15': demographic_data.get('literacy_rate_above_15', 0),
        'literacy_rate_15_to_24': demographic_data.get('literacy_rate_15_to_24', 0),
        'updated_at': get_current_timestamp(),
        'created_at': get_current_timestamp()
    }

def generate_insert_statement(data):
    """
    Generate an SQL insert statement for demographic summary data.
    """
    return f"""
    INSERT INTO {TARGET_TABLE} (
        id,
        total_population,
        population_male,
        population_female,
        population_other,
        population_absentee_total,
        population_male_absentee,
        population_female_absentee,
        population_other_absentee,
        sex_ratio,
        total_households,
        average_household_size,
        population_density,
        population_0_to_14,
        population_15_to_59,
        population_60_and_above,
        growth_rate,
        literacy_rate_above_15,
        literacy_rate_15_to_24,
        updated_at,
        created_at
    ) VALUES (
        '{data['id']}',
        {data['total_population']},
        {data['population_male']},
        {data['population_female']},
        {data['population_other']},
        {data['population_absentee_total']},
        {data['population_male_absentee']},
        {data['population_female_absentee']},
        {data['population_other_absentee']},
        {data['sex_ratio']},
        {data['total_households']},
        {data['average_household_size']},
        {data['population_density']},
        {data['population_0_to_14']},
        {data['population_15_to_59']},
        {data['population_60_and_above']},
        {data['growth_rate']},
        {data['literacy_rate_above_15']},
        {data['literacy_rate_15_to_24']},
        '{data['updated_at']}',
        '{data['created_at']}'
    );
    """

def generate_table_create_statement():
    """
    Generate SQL to create the demographic summary table if it doesn't exist.
    """
    return f"""
-- Check if {TARGET_TABLE} table exists, if not create it
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = '{TARGET_TABLE}'
    ) THEN
        CREATE TABLE {TARGET_TABLE} (
            id VARCHAR(36) PRIMARY KEY DEFAULT 'singleton',
            total_population INTEGER,
            population_male INTEGER,
            population_female INTEGER,
            population_other INTEGER,
            population_absentee_total INTEGER,
            population_male_absentee INTEGER,
            population_female_absentee INTEGER,
            population_other_absentee INTEGER,
            sex_ratio DECIMAL,
            total_households INTEGER,
            average_household_size DECIMAL,
            population_density DECIMAL,
            population_0_to_14 INTEGER,
            population_15_to_59 INTEGER,
            population_60_and_above INTEGER,
            growth_rate DECIMAL,
            literacy_rate_above_15 DECIMAL,
            literacy_rate_15_to_24 DECIMAL,
            updated_at TIMESTAMP DEFAULT NOW(),
            created_at TIMESTAMP DEFAULT NOW()
        );
    END IF;
END
$$;

-- Check if data already exists before inserting
DO $$
BEGIN
    -- Only insert if the singleton record doesn't exist
    IF NOT EXISTS (SELECT 1 FROM {TARGET_TABLE} WHERE id = 'singleton') THEN
"""

def generate_closing_statement():
    """Generate the closing SQL statement for conditional insert."""
    return """
        RAISE NOTICE 'Demographic summary data inserted successfully';
    ELSE
        RAISE NOTICE 'Demographic summary data already exists, skipping insertion';
    END IF;
END
$$;
"""

def extract_demographic_data(source_conn):
    """Extract demographic data from source database."""
    logger.info("Extracting demographic data")
    
    # Extract total population and gender breakdown
    population_query = """
    SELECT 
        COUNT(*) as total_population,
        SUM(CASE WHEN gender = 'पुरुष' THEN 1 ELSE 0 END) as population_male,
        SUM(CASE WHEN gender = 'महिला' THEN 1 ELSE 0 END) as population_female,
        SUM(CASE WHEN gender = 'अन्य' THEN 1 ELSE 0 END) as population_other
    FROM 
        khajura_individual
    WHERE 
        is_absent = FALSE;
    """
    population_df = execute_query(source_conn, population_query)
    
    # Extract absentee population data
    absentee_query = """
    SELECT 
        COUNT(*) as population_absentee_total,
        SUM(CASE WHEN gender = 'पुरुष' THEN 1 ELSE 0 END) as population_male_absentee,
        SUM(CASE WHEN gender = 'महिला' THEN 1 ELSE 0 END) as population_female_absentee,
        SUM(CASE WHEN gender = 'अन्य' THEN 1 ELSE 0 END) as population_other_absentee
    FROM 
        khajura_individual
    WHERE 
        is_absent = TRUE;
    """
    absentee_df = execute_query(source_conn, absentee_query)
    
    # Extract total households
    households_query = """
    SELECT 
        COUNT(*) as total_households
    FROM 
        khajura_household;
    """
    households_df = execute_query(source_conn, households_query)
    
    # Extract age group counts
    age_query = """
    SELECT 
        SUM(CASE WHEN age >= 0 AND age <= 14 THEN 1 ELSE 0 END) as population_0_to_14,
        SUM(CASE WHEN age >= 15 AND age <= 59 THEN 1 ELSE 0 END) as population_15_to_59,
        SUM(CASE WHEN age >= 60 THEN 1 ELSE 0 END) as population_60_and_above
    FROM 
        khajura_individual
    WHERE 
        age IS NOT NULL AND is_absent = FALSE;
    """
    age_df = execute_query(source_conn, age_query)
    
    # Extract literacy data (for population above 15)
    literacy_query = """
    SELECT 
        COUNT(*) as total_above_15,
        SUM(CASE WHEN education_level IS NOT NULL AND education_level != 'निरक्षर' THEN 1 ELSE 0 END) as literate_above_15
    FROM 
        khajura_individual
    WHERE 
        age >= 15 AND is_absent = FALSE;
    """
    literacy_df = execute_query(source_conn, literacy_query)
    
    # Extract literacy data (for population 15-24)
    literacy_youth_query = """
    SELECT 
        COUNT(*) as total_15_to_24,
        SUM(CASE WHEN education_level IS NOT NULL AND education_level != 'निरक्षर' THEN 1 ELSE 0 END) as literate_15_to_24
    FROM 
        khajura_individual
    WHERE 
        age >= 15 AND age <= 24 AND is_absent = FALSE;
    """
    literacy_youth_df = execute_query(source_conn, literacy_youth_query)
    
    logger.info("Extracted all demographic data components")
    
    return {
        'population_df': population_df,
        'absentee_df': absentee_df,
        'households_df': households_df,
        'age_df': age_df,
        'literacy_df': literacy_df,
        'literacy_youth_df': literacy_youth_df
    }

def transform_demographic_data(data_dict):
    """Transform the extracted data into a demographic summary."""
    logger.info("Transforming demographic data")
    
    # Extract values from dataframes
    total_population = int(data_dict['population_df']['total_population'].iloc[0])
    population_male = int(data_dict['population_df']['population_male'].iloc[0])
    population_female = int(data_dict['population_df']['population_female'].iloc[0])
    population_other = int(data_dict['population_df']['population_other'].iloc[0])
    
    population_absentee_total = int(data_dict['absentee_df']['population_absentee_total'].iloc[0])
    population_male_absentee = int(data_dict['absentee_df']['population_male_absentee'].iloc[0])
    population_female_absentee = int(data_dict['absentee_df']['population_female_absentee'].iloc[0])
    population_other_absentee = int(data_dict['absentee_df']['population_other_absentee'].iloc[0])
    
    total_households = int(data_dict['households_df']['total_households'].iloc[0])
    
    population_0_to_14 = int(data_dict['age_df']['population_0_to_14'].iloc[0])
    population_15_to_59 = int(data_dict['age_df']['population_15_to_59'].iloc[0])
    population_60_and_above = int(data_dict['age_df']['population_60_and_above'].iloc[0])
    
    # Calculate derived metrics
    # Sex ratio (males per 100 females)
    sex_ratio = (population_male / population_female * 100) if population_female > 0 else 0
    
    # Average household size
    average_household_size = (total_population / total_households) if total_households > 0 else 0
    
    # Population density (assumed in source data)
    population_density = 636.91  # This is a placeholder - should be calculated or provided
    
    # Growth rate (assumed in source data)
    growth_rate = 2.74  # This is a placeholder - should be calculated or provided
    
    # Literacy rates
    total_above_15 = int(data_dict['literacy_df']['total_above_15'].iloc[0])
    literate_above_15 = int(data_dict['literacy_df']['literate_above_15'].iloc[0])
    literacy_rate_above_15 = (literate_above_15 / total_above_15 * 100) if total_above_15 > 0 else 0
    
    total_15_to_24 = int(data_dict['literacy_youth_df']['total_15_to_24'].iloc[0])
    literate_15_to_24 = int(data_dict['literacy_youth_df']['literate_15_to_24'].iloc[0])
    literacy_rate_15_to_24 = (literate_15_to_24 / total_15_to_24 * 100) if total_15_to_24 > 0 else 0
    
    # Combine all data into a single dictionary
    demographic_summary = {
        'total_population': total_population,
        'population_male': population_male,
        'population_female': population_female,
        'population_other': population_other,
        'population_absentee_total': population_absentee_total,
        'population_male_absentee': population_male_absentee,
        'population_female_absentee': population_female_absentee,
        'population_other_absentee': population_other_absentee,
        'sex_ratio': round(sex_ratio, 2),
        'total_households': total_households,
        'average_household_size': round(average_household_size, 2),
        'population_density': population_density,
        'population_0_to_14': population_0_to_14,
        'population_15_to_59': population_15_to_59,
        'population_60_and_above': population_60_and_above,
        'growth_rate': growth_rate,
        'literacy_rate_above_15': round(literacy_rate_above_15, 2),
        'literacy_rate_15_to_24': round(literacy_rate_15_to_24, 2)
    }
    
    logger.info("Transformed demographic data into summary")
    
    return demographic_summary

def load_demographic_data(demographic_summary, target_conn, generate_sql=True):
    """Load the demographic summary into the target database and optionally generate SQL file."""
    logger.info(f"Preparing to load data into {TARGET_TABLE}")
    
    # Check if table exists and has data
    if table_exists(target_conn, TARGET_TABLE) and table_has_data(target_conn, TARGET_TABLE):
        logger.info(f"Table {TARGET_TABLE} already exists and has data. Skipping insertion.")
        return False
    
    # Create data dictionary for insertion
    data = create_insert_data(demographic_summary)
    
    # Generate SQL statement
    insert_statement = generate_insert_statement(data)
    
    # Save SQL to file if requested
    if generate_sql:
        # Create the full SQL script with create table and conditional insertion
        full_sql_script = []
        full_sql_script.append(generate_table_create_statement())
        full_sql_script.append(insert_statement)
        full_sql_script.append(generate_closing_statement())
        
        # Define the output file path
        sql_file_path = os.path.join(DEMOGRAPHICS_SQL_DIR, f"{TARGET_TABLE}.sql")
        
        # Save to file
        save_sql_to_file(full_sql_script, sql_file_path)
    
    # Insert data into target database
    success = insert_data_to_db(target_conn, [insert_statement])
    
    if success:
        logger.info(f"Successfully loaded demographic summary into {TARGET_TABLE}")
    
    return success

def process_demographics_summary(source_conn, target_conn, generate_sql=True):
    """Process demographic summary data from extraction to loading."""
    logger.info("Processing demographic summary data")
    
    try:
        # Extract data
        data_dict = extract_demographic_data(source_conn)
        
        # Transform data
        demographic_summary = transform_demographic_data(data_dict)
        
        # Load data
        load_demographic_data(demographic_summary, target_conn, generate_sql)
        
        logger.info("Completed processing demographic summary data")
        return True
    except Exception as e:
        logger.error(f"Error processing demographic summary data: {e}")
        return False
