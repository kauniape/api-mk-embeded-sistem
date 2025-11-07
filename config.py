import os
from dotenv import load_dotenv

# Baca file .env kalau ada (berguna untuk local testing)
load_dotenv()

MYSQL_HOST = os.getenv("MYSQLHOST")
MYSQL_USER = os.getenv("MYSQLUSER")
MYSQL_PASSWORD = os.getenv("MYSQLPASSWORD")
MYSQL_DB = os.getenv("MYSQLDATABASE")
MYSQL_PORT = int(os.getenv("MYSQLPORT", 3306))
