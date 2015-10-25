WeatherV1.0
===========

Weather information function for PostGIS using plpythonu

# Prerequisites

- Program needs PL/Python extension in PostGIS
- PL/Python extension installation : apt-get install postgresql-plpython-x.x (x.x replaced with your preferred version
of plpython which is suitable for you)
- Activate your extension in Postgres: createlang plpythonu -U postgres

# Install WeatherV1.0

- Load the weather.sql file into your database
- \i weather.sql

# Use

- SELECT weather(lat,long);
- function gets the temperature in Celsius originally, so if you want it in Kelvin you have to remove
(- 273.15)

# In the background

- program uses OpenWeatherMap free weather forecast data with the newest API 2.5.
