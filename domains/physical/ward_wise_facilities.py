import pandas as pd
import logging
import os
import ast
from utils.database import execute_query, table_exists, table_has_data, insert_data_to_db, save_sql_to_file
from utils.transformers import generate_uuid, get_current_timestamp
from config import PHYSICAL_SQL_DIR

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

# Target table name
TARGET_TABLE = "acme_ward_wise_facilities"

# Define facility mappings based on the provided enum values
FACILITY_MAPPING = {
    # Primary Nepali terms from the specification
    "रेडियो सुविधा": "RADIO",
    "टेलिभिजन": "TELEVISION",
    "कम्प्युटर/ल्यापटप": "COMPUTER",
    "इन्टरनेट सुविधा": "INTERNET",
    "मोबाईल फोन": "MOBILE_PHONE",
    "कार/जीप/भ्यान": "CAR_JEEP",
    "मोटरसाईकल/स्कुटर": "MOTORCYCLE",
    "साईकल": "BICYCLE",
    "रेफ्रिजेरेटर (फ्रिज)": "REFRIGERATOR",
    "वासिङ मेसिन": "WASHING_MACHINE",
    "एयर कन्डिसनर": "AIR_CONDITIONER", 
    "विद्युतीय पंखा": "ELECTRICAL_FAN",
    "माइक्रोवेभ ओभन": "MICROWAVE_OVEN",
    "राष्ट्रिय दैनिक पत्रिकाको पहुँच": "DAILY_NATIONAL_NEWSPAPER_ACCESS",
    "माथिका कुनै पनि नभएको": "NONE",
    
    # Additional English variations for flexibility
    "radio": "RADIO",
    "television": "TELEVISION",
    "tv": "TELEVISION",
    "computer": "COMPUTER",
    "laptop": "COMPUTER",
    "internet": "INTERNET",
    "mobile": "MOBILE_PHONE",
    "phone": "MOBILE_PHONE",
    "car": "CAR_JEEP",
    "jeep": "CAR_JEEP",
    "van": "CAR_JEEP",
    "motorcycle": "MOTORCYCLE",
    "bike": "MOTORCYCLE",
    "scooter": "MOTORCYCLE",
    "bicycle": "BICYCLE",
    "cycle": "BICYCLE",
    "refrigerator": "REFRIGERATOR",
    "fridge": "REFRIGERATOR",
    "washing machine": "WASHING_MACHINE",
    "air conditioner": "AIR_CONDITIONER",
    "ac": "AIR_CONDITIONER",
    "fan": "ELECTRICAL_FAN",
    "electric fan": "ELECTRICAL_FAN", 
    "microwave": "MICROWAVE_OVEN",
    "oven": "MICROWAVE_OVEN",
    "newspaper": "DAILY_NATIONAL_NEWSPAPER_ACCESS",
    "none": "NONE",
    
    # Handle nulls and empty strings
    None: "NONE",
    "": "NONE"
}

def map_facility(facility):
    """
    Map facility names to standardized values.
    """
    if not facility or pd.isna(facility):
        return "NONE"
    
    # Try direct mapping
    standardized = FACILITY_MAPPING.get(facility)
    if standardized:
        return standardized
    
    # Try lowercase matching for flexibility
    facility_lower = str(facility).lower().strip()
    for key, value in FACILITY_MAPPING.items():
        if key and isinstance(key, str) and key.lower() == facility_lower:
            return value
    
    # Check for keywords in the facility string
    if "रेडियो" in facility or "radio" in facility_lower:
        return "RADIO"
    elif "टेलिभिजन" in facility or "television" in facility_lower or "tv" in facility_lower:
        return "TELEVISION"
    elif "कम्प्युटर" in facility or "ल्यापटप" in facility or "computer" in facility_lower or "laptop" in facility_lower:
        return "COMPUTER"
    elif "इन्टरनेट" in facility or "internet" in facility_lower:
        return "INTERNET"
    elif "मोबाईल" in facility or "फोन" in facility or "mobile" in facility_lower or "phone" in facility_lower:
        return "MOBILE_PHONE"
    elif "कार" in facility or "जीप" in facility or "भ्यान" in facility or "car" in facility_lower or "jeep" in facility_lower or "van" in facility_lower:
        return "CAR_JEEP"
    elif "मोटरसाईकल" in facility or "स्कुटर" in facility or "motorcycle" in facility_lower or "bike" in facility_lower or "scooter" in facility_lower:
        return "MOTORCYCLE"
    elif "साईकल" in facility or "bicycle" in facility_lower or "cycle" in facility_lower:
        return "BICYCLE"
    elif "रेफ्रिजेरेटर" in facility or "फ्रिज" in facility or "refrigerator" in facility_lower or "fridge" in facility_lower:
        return "REFRIGERATOR"
    elif "वासिङ" in facility or "washing" in facility_lower:
        return "WASHING_MACHINE"
    elif "एयर कन्डिसनर" in facility or "air conditioner" in facility_lower or "ac" in facility_lower:
        return "AIR_CONDITIONER"
    elif "पंखा" in facility or "fan" in facility_lower:
        return "ELECTRICAL_FAN"
    elif "माइक्रोवेभ" in facility or "ओभन" in facility or "microwave" in facility_lower or "oven" in facility_lower:
        return "MICROWAVE_OVEN"
    elif "पत्रिका" in facility or "newspaper" in facility_lower:
        return "DAILY_NATIONAL_NEWSPAPER_ACCESS"
    elif "नभएको" in facility or "none" in facility_lower:
        return "NONE"
    
    # Default for unmatched values
    logger.warning(f"Facility '{facility}' not found in mapping. Using default 'NONE'.")
    return "NONE"

def safe_eval_list(array_str):
    """Safely evaluate a string representation of a list."""
    if pd.isna(array_str) or not array_str:
        return []
    
    try:
        # Try to use ast.literal_eval which is safer than eval
        return ast.literal_eval(array_str)
    except (ValueError, SyntaxError):
        try:
            # If the string isn't a proper Python list, try to handle common formats
            if array_str.startswith('[') and array_str.endswith(']'):
                # Strip brackets and split by commas
                items = array_str[1:-1].split(',')
                return [item.strip().strip('"\'') for item in items]
            else:
                # Just split by commas if no brackets
                return [item.strip() for item in array_str.split(',')]
        except Exception as e:
            logger.warning(f"Error parsing facilities list: {e}. Input was: {array_str}")
            return []

def create_insert_data(ward_number, facility, households):
    """
    Create a data dictionary for insertion specific to facilities.
    """
    return {
        'id': generate_uuid(),
        'ward_number': int(ward_number),
        'facility': facility,
        'households': int(households),
        'updated_at': get_current_timestamp(),
        'created_at': get_current_timestamp()
    }

def generate_insert_statement(data):
    """
    Generate an SQL insert statement from a data dictionary specific to facilities.
    """
    return f"""
    INSERT INTO {TARGET_TABLE} 
    (id, ward_number, facility, households, updated_at, created_at)
    VALUES (
        '{data['id']}',
        {data['ward_number']},
        '{data['facility']}',
        {data['households']},
        '{data['updated_at']}',
        '{data['created_at']}'
    );
    """

def generate_table_create_statement():
    """
    Generate SQL to create the ward_wise_facilities table if it doesn't exist.
    """
    return f"""
-- Check if {TARGET_TABLE} table exists, if not create it
DO $$
BEGIN
    -- First create the enum type if it doesn't exist
    IF NOT EXISTS (
        SELECT 1 FROM pg_type WHERE typname = 'facility_type'
    ) THEN
        CREATE TYPE facility_type AS ENUM (
            'RADIO',
            'TELEVISION',
            'COMPUTER',
            'INTERNET',
            'MOBILE_PHONE',
            'CAR_JEEP',
            'MOTORCYCLE',
            'BICYCLE',
            'REFRIGERATOR',
            'WASHING_MACHINE',
            'AIR_CONDITIONER',
            'ELECTRICAL_FAN',
            'MICROWAVE_OVEN',
            'DAILY_NATIONAL_NEWSPAPER_ACCESS',
            'NONE'
        );
    END IF;

    -- Then create the table if it doesn't exist
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables WHERE tablename = '{TARGET_TABLE}'
    ) THEN
        CREATE TABLE {TARGET_TABLE} (
            id VARCHAR(36) PRIMARY KEY,
            ward_number INTEGER NOT NULL,
            facility facility_type NOT NULL,
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

def extract_facilities_data(source_conn):
    """Extract facilities data from source database."""
    logger.info("Extracting facilities data")
    
    # Query to get ward and facilities for households
    query = """
    SELECT 
        ward_no, 
        facilities
    FROM 
        khajura_household
    WHERE 
        facilities IS NOT NULL
    """
    
    # Execute the query
    df = execute_query(source_conn, query)
    logger.info(f"Extracted facilities data for {len(df)} households")
    
    return df

def transform_facilities_data(df):
    """Transform the extracted data into the required format."""
    logger.info("Transforming facilities data")
    
    # Dictionary to store counts by ward and facility
    facility_counts = {}
    
    # Process each row
    for _, row in df.iterrows():
        ward = int(row['ward_no'])
        
        # Initialize the ward in the dictionary if not exists
        if ward not in facility_counts:
            facility_counts[ward] = {}
            
        # Parse the facilities list
        facilities_list = safe_eval_list(row['facilities'])
        
        if not facilities_list:  # If the list is empty, count as NONE
            if "NONE" not in facility_counts[ward]:
                facility_counts[ward]["NONE"] = 0
            facility_counts[ward]["NONE"] += 1
        else:
            # For each facility in the list, increment the count
            for facility in facilities_list:
                mapped_facility = map_facility(facility)
                if mapped_facility not in facility_counts[ward]:
                    facility_counts[ward][mapped_facility] = 0
                facility_counts[ward][mapped_facility] += 1
    
    # Convert the nested dictionary to a DataFrame
    result_rows = []
    for ward, facilities in facility_counts.items():
        for facility, count in facilities.items():
            result_rows.append({
                'ward_no': ward,
                'facility': facility,
                'households': count
            })
    
    result_df = pd.DataFrame(result_rows)
    logger.info(f"Transformed facilities data with {len(result_df)} ward-facility combinations")
    
    return result_df

def load_facilities_data(df, target_conn, generate_sql=True):
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
            facility=row['facility'],
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
    
    # Insert data into target database
    success = insert_data_to_db(target_conn, insert_statements)
    
    if success:
        logger.info(f"Successfully loaded {len(insert_data)} records into {TARGET_TABLE}")
    
    return success

def process_facilities(source_conn, target_conn, generate_sql=True):
    """Process ward-wise facilities data from extraction to loading."""
    logger.info("Processing ward-wise facilities data")
    
    try:
        # Extract data
        df = extract_facilities_data(source_conn)
        
        # Transform data
        transformed_df = transform_facilities_data(df)
        
        # Load data
        load_facilities_data(transformed_df, target_conn, generate_sql)
        
        logger.info("Completed processing ward-wise facilities data")
        return True
    except Exception as e:
        logger.error(f"Error processing ward-wise facilities data: {e}")
        return False
