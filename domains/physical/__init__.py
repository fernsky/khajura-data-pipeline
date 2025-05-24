import logging
from .ward_wise_time_to_public_transport import process_time_to_public_transport

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

def process_physical_data(source_conn, target_conn, generate_sql=True):
    """Process all physical infrastructure domain data."""
    logger.info("Starting physical infrastructure data processing")
    
    # Process physical data
    process_time_to_public_transport(source_conn, target_conn, generate_sql)
    
    # Uncomment these as they are implemented:
    # process_ward_wise_housing_type(source_conn, target_conn, generate_sql)
    # process_ward_wise_drinking_water(source_conn, target_conn, generate_sql)
    # process_ward_wise_toilet_type(source_conn, target_conn, generate_sql)
    # process_ward_wise_cooking_fuel(source_conn, target_conn, generate_sql)
    # process_ward_wise_electricity_access(source_conn, target_conn, generate_sql)
    
    logger.info("Completed physical infrastructure data processing")
