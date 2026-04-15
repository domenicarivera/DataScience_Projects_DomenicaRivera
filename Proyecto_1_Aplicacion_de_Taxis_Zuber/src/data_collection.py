import requests
from bs4 import BeautifulSoup
import pandas as pd

URL = 'https://practicum-content.s3.us-west-1.amazonaws.com/data-analyst-eng/moved_chicago_weather_2017.html'
req = requests.get(URL)
soup = BeautifulSoup(req.text, 'lxml')
table = soup.find('table', attrs={"id": "weather_records"})

headers_table = []
for row in table.find_all('th'):
    headers_table.append(row.text)

contents_table = []
for row in table.find_all('tr'):  # ← Busca cada FILA
    if not row.find_all('th'):    # ← Solo si la fila NO tiene encabezados
        # Extrae todos los <td> de esta fila específica
        row_data = [element.text for element in row.find_all('td')]
        contents_table.append(row_data)  # ← Agrega la fila completa

weather_records = pd.DataFrame(contents_table, columns=headers_table)
print(weather_records)
