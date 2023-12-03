import json
from pathlib import Path
import sqlite3

data_loc = Path('au_cities.json').resolve()
data_base_loc = Path('./au_cities.db').resolve()
conn = sqlite3.connect(data_base_loc)
conn.execute("CREATE TABLE au_cities (city text, lat FLOAT, lng FLOAT);")

with open(data_loc) as json_file:
    data = json.load(json_file)

for city in data:
    conn.execute("INSERT INTO au_cities (city, lat, lng) VALUES (?, ?, ?)",
                 (city["city"], float(city["lat"]), float(city["lng"])))

conn.commit()
conn.close()