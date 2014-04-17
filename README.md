WeatherV1.0
===========

Weather information function for PostGIS using plpythonu

# Prerequisites

- Program needs PL/Python extension in PostGIS
- PL/Python extension installation : apt-get install postgresql-plpython-x.x (x.x replaced with your preferred version
which fits to your postgresql server)
- Activate your extension in Postgres: createlang plpythonu -U postgres

# Install WeatherV1.0 on Linux

- git clone https://github.com/MBalazs90/WeatherV1.0.git
- edit the CREATE_FUNC.sh file and fill with your own data
- to find psql run locate command. almost in every case it is located in /usr/bin/psql
- chmod a+x ./CREATE_FUNC.sh
- ./CREATE_FUNC.sh

# Install WeatherV1.0 manually

- Load the weather.sql file into your database
- \i weather.sql

# Use

- SELECT weather(lat,long);
- function gets the temperature in Celsius originally, so if you want it in Kelvin you have to remove
(- 273.15)

# In the background

- program uses OpenWeatherMap free weather forecast data with the newest API 2.5.
