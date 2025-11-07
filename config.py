import os

# Railway kadang pakai nama variabel berbeda tergantung jenis service
MYSQL_HOST = os.getenv("MYSQLHOST") or os.getenv("MYSQL_HOST")
MYSQL_USER = os.getenv("MYSQLUSER") or os.getenv("MYSQL_USER")
MYSQL_PASSWORD = os.getenv("MYSQLPASSWORD") or os.getenv("MYSQL_PASSWORD")
MYSQL_DB = os.getenv("MYSQLDATABASE") or os.getenv("MYSQL_DB")
MYSQL_PORT = int(os.getenv("MYSQLPORT") or os.getenv("MYSQL_PORT") or 3306)

# Debug log untuk memastikan yang dibaca benar
print("=== Railway MySQL Config ===")
print("Host:", MYSQL_HOST)
print("User:", MYSQL_USER)
print("DB:", MYSQL_DB)
print("Port:", MYSQL_PORT)
