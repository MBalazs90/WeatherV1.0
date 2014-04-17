#!/bin/sh
# Shell script to create an instance of the Weather V1.0
# on PostgreSQL/PostGIS

# Provide your database details here
export PGPORT=5432
export PGHOST=your_host_address
export PGUSER=your_username
export DB=your_database
export PGBIN=path_to_psql

# cd to path of the shell script
cd "$( cd "$( dirname "$0" )" && pwd )" > /dev/null


"$PGBIN/psql" -d "$DB" -f "weather.sql"
