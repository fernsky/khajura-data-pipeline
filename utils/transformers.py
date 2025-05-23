import uuid
from datetime import datetime
import logging

# Set up logging
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

# Generic utility functions for data transformation
def generate_uuid():
    """Generate a random UUID string."""
    return str(uuid.uuid4())

def get_current_timestamp():
    """Get current timestamp formatted for database insertion."""
    return datetime.now().strftime('%Y-%m-%d %H:%M:%S')
