#!/bin/bash

echo "INITIALIZING DATABASES"

set -e
set -u

database=big_db
echo "Creating database '$database'"
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE $database;
EOSQL

schema=i_shop
privUser=i_shop
readOnlyUser=i_shop_read
echo "Creating schema and users"
psql --dbname=$database -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE SCHEMA $schema;

    CREATE USER $privUser WITH PASSWORD '$privUser';
    
    GRANT CONNECT ON DATABASE $database TO $privUser;
    GRANT ALL ON SCHEMA $schema TO $privUser;
    GRANT ALL ON ALL TABLES IN schema $schema TO $privUser;
    GRANT ALL ON ALL SEQUENCES IN SCHEMA $schema TO $privUser;
    GRANT ALL ON ALL FUNCTIONS IN SCHEMA $schema to $privUser;
    ALTER DEFAULT PRIVILEGES FOR ROLE $privUser IN SCHEMA $schema
        GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO $privUser;
    ALTER DEFAULT PRIVILEGES FOR ROLE $privUser IN SCHEMA $schema
        GRANT USAGE, SELECT ON SEQUENCES TO $privUser;
    ALTER DEFAULT PRIVILEGES FOR ROLE $privUser IN SCHEMA $schema
        GRANT EXECUTE ON FUNCTIONS TO $privUser;

    CREATE USER $readOnlyUser WITH PASSWORD '$readOnlyUser';

    GRANT CONNECT ON DATABASE $database TO $readOnlyUser;
    GRANT USAGE ON SCHEMA $schema TO $readOnlyUser;
    GRANT SELECT ON ALL TABLES IN schema $schema TO $readOnlyUser;
    ALTER DEFAULT PRIVILEGES FOR ROLE $readOnlyUser IN SCHEMA $schema
        GRANT SELECT ON TABLES TO $readOnlyUser;
EOSQL