import logging
from .ward_wise_household_income_sources import process_income_sources

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

def process_economics_data(source_conn, target_conn, generate_sql=True):
    """Process all economics domain data."""
    logger.info("Starting economics data processing")
    
    # Process household income sources
    process_income_sources(source_conn, target_conn, generate_sql)
    
    # Add more economics data processing functions here as needed
    
    logger.info("Completed economics data processing")
