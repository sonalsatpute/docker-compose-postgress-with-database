#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE smaple_db_1;
    CREATE DATABASE smaple_db_2;
    GRANT ALL PRIVILEGES ON DATABASE smaple_db_1 TO sonal;
    GRANT ALL PRIVILEGES ON DATABASE smaple_db_2 TO sonal;
EOSQL