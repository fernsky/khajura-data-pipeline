import logging
from .ward_wise_household_income_sources import process_income_sources
from .ward_wise_trained_population import process_trained_population
from .ward_wise_major_skills import process_major_skills
from .ward_wise_major_occupation import process_major_occupation
from .ward_wise_households_on_loan import process_households_on_loan
from .ward_wise_households_loan_use import process_households_loan_use
from .ward_wise_household_land_possessions import process_household_land_possessions
from .ward_wise_economically_active_population import process_economically_active_population
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
    process_trained_population(source_conn, target_conn, generate_sql)
    process_major_skills(source_conn, target_conn, generate_sql)
    process_major_occupation(source_conn, target_conn, generate_sql)
    process_households_on_loan(source_conn, target_conn, generate_sql)
    process_households_loan_use(source_conn, target_conn, generate_sql)
    process_household_land_possessions(source_conn, target_conn, generate_sql)
    process_economically_active_population(source_conn, target_conn, generate_sql)

    # Add more economics data processing functions here as needed

    logger.info("Completed economics data processing")

