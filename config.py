import os

# Source database configuration (from the existing notebooks)
SOURCE_DB = {
    'host': 'digprofile.com',
    'dbname': 'postgres',
    'user': 'postgres',
    'password': 'supabase',
    'port': '5432'
}

# Target database configuration (from the existing notebooks)
TARGET_DB = {
    'host': '5.104.111.231',
    'dbname': 'postgres',
    'user': 'postgres',
    'password': '05GE31huXLaeilmoWEE1WjVLvCtKovau7Y1sJQV3h0nejs1vaQ9hWuOpEmDeNYyh',
    'port': '43982'
}

# Base output directory for SQL files
SQL_OUTPUT_DIR = os.path.join(os.path.dirname(__file__), 'export', 'sql')

# Domain-specific SQL output directories
ECONOMICS_SQL_DIR = os.path.join(SQL_OUTPUT_DIR, 'economics')
DEMOGRAPHICS_SQL_DIR = os.path.join(SQL_OUTPUT_DIR, 'demographics')
EDUCATION_SQL_DIR = os.path.join(SQL_OUTPUT_DIR, 'education')
FERTILITY_SQL_DIR = os.path.join(SQL_OUTPUT_DIR, 'fertility')
HEALTH_SQL_DIR = os.path.join(SQL_OUTPUT_DIR, 'health')
PHYSICAL_SQL_DIR = os.path.join(SQL_OUTPUT_DIR, 'physical')

# Ensure output directories exist
os.makedirs(ECONOMICS_SQL_DIR, exist_ok=True)
os.makedirs(DEMOGRAPHICS_SQL_DIR, exist_ok=True)
os.makedirs(EDUCATION_SQL_DIR, exist_ok=True)
os.makedirs(FERTILITY_SQL_DIR, exist_ok=True)
os.makedirs(HEALTH_SQL_DIR, exist_ok=True)
os.makedirs(PHYSICAL_SQL_DIR, exist_ok=True)
