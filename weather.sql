CREATE OR REPLACE FUNCTION weather(lat float, lon float)
  RETURNS float AS $$
import sys
if sys.version_info[0] == 2:
    from urllib2 import urlopen
else:  # Python 3
    from urllib.request import urlopen
import json

#Use your own appid after registration
def get_temp(lat, lon):
    data = urlopen("http://api.openweathermap.org/data/2.5/weather?lat=%s&lon=%s&appid=YOURIDHERE&cnt=1" % (lat, lon))
    js_data = json.loads(data.read().decode('utf-8'))
    try:
        return js_data['main']['temp'] - 273.15
    except (KeyError, IndexError):
        return None

    return get_temp(lat, lon)
$$ LANGUAGE plpythonu;
