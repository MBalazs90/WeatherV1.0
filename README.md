WeatherV1.0
===========

Weather information function for PostGIS using plpythonu

# Prerequisites

- Program needs PL/Python extension in PostGIS
- PL/Python extension installation : apt-get install postgresql-plpython-x.x (x.x replaced with your preferred version
which fits to you postgresql server)
- Activate your extension in Postgres: createlang plpythonu -U postgres

# Install WeatherV1.0

- git clone https://github.com/MBalazs90/WeatherV1.0.git
- edit the CREATE_FUNC.sh file with your own data

export PGPORT=5432
export PGHOST=your_host_address
export PGUSER=your_username
export DB=your_database
export PGBIN=path_to_psql

- to find psql run locate command. almost every case it is located in /usr/bin/psql
- chmod a+x ./CREATE_FUNC.sh
- ./CREATE_FUNC.sh

# Use

- SELECT weather(lat,long);
- function gets the temperature in Celsius originally, so if you want it in Kelvin you have to remove

# In the background

- program uses the OpenWeatherMap free forecast data with the newest API 2.5.
