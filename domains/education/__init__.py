import logging
from .ward_wise_educational_level import process_educational_level

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

def process_education_data(source_conn, target_conn, generate_sql=True):
    """Process all education domain data."""
    logger.info("Starting education data processing")
    
    # Process education data
    process_educational_level(source_conn, target_conn, generate_sql)
    # Add more education data processing functions here as they are implemented
    
    logger.info("Completed education data processing")
