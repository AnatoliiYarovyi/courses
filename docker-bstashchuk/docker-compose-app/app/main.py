from pymongo import MongoClient
from pprint import pprint

# myMongo - name image 'mongo' in Docker-compose...
MONGO_URL = "mongodb://myMongo:27017" 
client = MongoClient(MONGO_URL)
db = client.admin
dbs_list = db.command("listDatabases")
pprint(dbs_list)
print("\nEnd!")