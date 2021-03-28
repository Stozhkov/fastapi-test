import json
from pymongo import MongoClient
import datetime

client = MongoClient("mongodb://root:example@0.0.0.0:27017")
db = client['employees']
collection_currency = db['employees_collection']

with open('employees.json') as f:
    file_data = json.load(f)

for row in file_data:
    row['join_date'] = datetime.datetime.strptime(row['join_date'], '%Y-%m-%dT%H:%M:%S%z')
    collection_currency.insert_one(row)

client.close()
