import logging
from .demographics_summary import process_demographics_summary
from .ward_age_wise_population import process_age_wise_population
from .ward_wise_caste_population import process_caste_population
from .ward_wise_househead_gender import process_househead_gender
from .ward_wise_mother_tongue_population import process_mother_tongue_population
from .ward_wise_religion_population import process_religion_population

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

def process_demographics_data(source_conn, target_conn, generate_sql=True):
    """Process all demographics domain data."""
    logger.info("Starting demographics data processing")
    
    # Process demographics data
    process_demographics_summary(source_conn, target_conn, generate_sql)
    process_age_wise_population(source_conn, target_conn, generate_sql)
    process_caste_population(source_conn, target_conn, generate_sql)
    process_househead_gender(source_conn, target_conn, generate_sql)
    process_mother_tongue_population(source_conn, target_conn, generate_sql)
    process_religion_population(source_conn, target_conn, generate_sql)
    # Add more demographics data processing functions here as they are implemented

    logger.info("Completed demographics data processing")
