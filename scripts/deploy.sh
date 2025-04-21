#!/bin/bash

# Database connection info
DB_HOST="localhost"
DB_PORT="1433"
DB_USER="sa"
DB_PASS="xxxxxxx"
DB_NAME="master"

# Path to SQL scripts
SQL_SCRIPTS_PATH="./sql"

# Function to execute SQL scripts
execute_sql() {
    SQL_FILE=$1
    echo "Executing $SQL_FILE..."
    /opt/mssql-tools/bin/sqlcmd -S $DB_HOST,$DB_PORT -U $DB_USER -P $DB_PASS -d $DB_NAME -i $SQL_FILE
}

# Loop through SQL scripts and execute them in order
for SQL_SCRIPT in $SQL_SCRIPTS_PATH/*.sql; do
    execute_sql $SQL_SCRIPT
done

echo "All SQL scripts executed successfully!"

