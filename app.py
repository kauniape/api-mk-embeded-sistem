from flask import Flask, request, jsonify
from flask_cors import CORS
from flask_mysqldb import MySQL
import MySQLdb.cursors
import config

app = Flask(__name__)
CORS(app)

# Konfigurasi MySQL
app.config['MYSQL_HOST'] = config.MYSQL_HOST
app.config['MYSQL_USER'] = config.MYSQL_USER
app.config['MYSQL_PASSWORD'] = config.MYSQL_PASSWORD
app.config['MYSQL_DB'] = config.MYSQL_DB
app.config['MYSQL_PORT'] = config.MYSQL_PORT

mysql = MySQL(app)

@app.route('/')
def home():
    return jsonify({
        "technology": "Embeded System",
        "organization": "Ecliptic Core",
        "member": [
            "Diza Angga Widiyatno",
            "Firman Sanjaya",
            "Faiz Ahnaf Maulana"
        ],
    })

# ============ API UNTUK POST ============
@app.route('/api/weather_data', methods=['POST'])
def receive_data():
    try:
        data = request.get_json()
        station_id = data.get('station_id')
        temperature = data.get('temperature')
        humidity = data.get('humidity')
        rain_status = data.get('rain_status')
        wind_speed = data.get('wind_speed')
        light_intensity = data.get('light_intensity')


        if not all([station_id, temperature, humidity, rain_status, wind_speed, light_intensity]):
            return jsonify({"status": "error", "message": "Incomplete data"}), 400

        cursor = mysql.connection.cursor()
        cursor.execute("""
            INSERT INTO weather_data (station_id, temperature, humidity, rain_status, wind_speed, light_intensity)
            VALUES (%s, %s, %s, %s, %s, %s)
        """, (station_id, temperature, humidity, rain_status, wind_speed, light_intensity))
        mysql.connection.commit()
        cursor.close()

        return jsonify({"status": "success", "message": "Data inserted successfully"})

    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


# ============ API UNTUK GET ============
@app.route('/api/weather_data', methods=['GET'])
def get_weather_data():
    try:
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute("SELECT * FROM weather_data")
        result = cursor.fetchall()
        cursor.close()

        return jsonify(result)

    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


if __name__ == '__main__':
    import os
    port = int(os.environ.get("PORT", 5000))
    app.run(host='0.0.0.0', port=port)
