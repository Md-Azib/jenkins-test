import os

# Same DB in Multiple Folder should not exist
# Structure by team
# Validation of same DB and query validation should run first
# Shoot an email to person who has written the query
# Reduce human error

print("Hi! from python")
print("All env variables : ", os.environ)

TEAM_NAME = os.environ.get("TEAM_NAME_VALUE")
DB_NAME = os.environ.get("DB_NAME_VALUE")
BASE_LOCATION = os.getcwd()
MIGRATION_DIR = 'migrations'

def get_full_path():
    return os.path.join(BASE_LOCATION, MIGRATION_DIR, TEAM_NAME, DB_NAME)

def validate_single_db():
    pass

def apply_migrations():
    full_path = get_full_path()
    print("Path is : ", full_path)
    os.chdir(full_path)
    os.system('ls -l')
    os.system('docker build -t test_liquibase_v1 .')
    os.system('docker run --rm --network="host" test_liquibase_v1 liquibase update')




apply_migrations()