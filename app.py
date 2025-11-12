from flask import Flask, request, jsonify
from flask_cors import CORS
from flask_mysqldb import MySQL
import MySQLdb.cursors
import config

app = Flask(__name__)
CORS(app)

# ===================== KONFIGURASI MYSQL =====================
app.config['MYSQL_HOST'] = config.MYSQL_HOST
app.config['MYSQL_USER'] = config.MYSQL_USER
app.config['MYSQL_PASSWORD'] = config.MYSQL_PASSWORD
app.config['MYSQL_DB'] = config.MYSQL_DB
app.config['MYSQL_PORT'] = config.MYSQL_PORT

mysql = MySQL(app)


# ===================== HALAMAN UTAMA =====================
@app.route('/')
def home():
    return jsonify({
        "technology": "Embedded System",
        "organization": "Ecliptic Core",
        "member": [
            "Diza Angga Widiyatno",
            "Firman Sanjaya",
            "Faiz Ahnaf Maulana"
        ],
    })


# ===================== API POST DATA =====================
@app.route('/api/weather_data', methods=['POST'])
def receive_data():
    """
    Endpoint untuk menerima data dari sensor.
    Setelah insert, otomatis hapus data lama jika lebih dari 100 per station_id.
    """
    try:
        data = request.get_json()
        station_id = data.get('station_id')
        temperature = data.get('temperature')
        humidity = data.get('humidity')
        rain_status = data.get('rain_status')
        wind_speed = data.get('wind_speed')
        light_intensity = data.get('light_intensity')

        # Validasi input
        if not all([station_id, temperature, humidity, rain_status, wind_speed, light_intensity]):
            return jsonify({"status": "error", "message": "Incomplete data"}), 400

        cursor = mysql.connection.cursor()

        # Simpan data baru
        cursor.execute("""
            INSERT INTO weather_data (station_id, temperature, humidity, rain_status, wind_speed, light_intensity)
            VALUES (%s, %s, %s, %s, %s, %s)
        """, (station_id, temperature, humidity, rain_status, wind_speed, light_intensity))
        mysql.connection.commit()

        # Hapus otomatis data lama jika lebih dari 100 per station_id
        cursor.execute("""
            DELETE FROM weather_data
            WHERE station_id = %s
            AND id NOT IN (
                SELECT id FROM (
                    SELECT id FROM weather_data
                    WHERE station_id = %s
                    ORDER BY id DESC
                    LIMIT 100
                ) AS t
            )
        """, (station_id, station_id))
        mysql.connection.commit()

        cursor.close()
        return jsonify({"status": "success", "message": "Data inserted and old data trimmed"})

    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


# ===================== API GET SEMUA DATA =====================
@app.route('/api/weather_data', methods=['GET'])
def get_all_weather_data():
    """
    Ambil semua data dari tabel weather_data
    """
    try:
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute("SELECT * FROM weather_data ORDER BY id DESC")
        result = cursor.fetchall()
        cursor.close()
        return jsonify(result)

    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


# ===================== API GET 5 DATA TERAKHIR PER STATION =====================
@app.route('/api/weather_data/5', methods=['GET'])
def get_5_weather_data():
    """
    Ambil 5 data terbaru per station_id
    """
    try:
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute("""
            SELECT wd.*
            FROM weather_data wd
            WHERE (
                SELECT COUNT(*)
                FROM weather_data w2
                WHERE w2.station_id = wd.station_id AND w2.id > wd.id
            ) < 5
            ORDER BY wd.station_id, wd.id DESC;
        """)
        result = cursor.fetchall()
        cursor.close()
        return jsonify(result)

    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500


# ===================== MAIN APP =====================
if __name__ == '__main__':
    import os
    port = int(os.environ.get("PORT", 5000))
    app.run(host='0.0.0.0', port=port)