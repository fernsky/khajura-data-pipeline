import logging
from .economics import process_economics_data

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

def process_all_data(source_conn, target_conn, generate_sql=True):
    """Process all domain data."""
    logger.info("Starting data processing for all domains")
    
    # Process each domain's data
    process_economics_data(source_conn, target_conn, generate_sql)
    
    logger.info("Completed processing all domains data")
