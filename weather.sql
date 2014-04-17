CREATE OR REPLACE FUNCTION weather(lat float, lon float)
  RETURNS float AS $$
import sys
if sys.version_info[0] == 2:
    from urllib2 import urlopen
else:  # Python 3
    from urllib.request import urlopen
import json

def get_temp(lat, lon):
    data = urlopen(
        "http://api.openweathermap.org/data/2.5/find?lat=%s&lon=%s&cnt=1"
        % (lat, lon))
    js_data = json.loads(data.read().decode('utf-8'))
    try:
        return js_data['list'][0]['main']['temp'] - 273.15
    except (KeyError, IndexError):
        return None

return get_temp(lat, lon)
$$ LANGUAGE plpythonu;
