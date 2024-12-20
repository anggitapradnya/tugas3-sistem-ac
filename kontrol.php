<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistem Pemantauan dan Status AC 1</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

    <div class="container">
        <h2>Sistem Pemantauan Status AC</h2>

        <?php
        // Konfigurasi database
        $servername = "localhost";
        $username = "root";
        $password = "";
        $database = "db_kontrol_ac";

        $conn = new mysqli($servername, $username, $password, $database);

        if ($conn->connect_error) {
            die("Koneksi gagal: " . $conn->connect_error);
        }

        // histori 
        if (isset($_GET['action']) && $_GET['action'] == 'history') {
            $sql_select = "SELECT * FROM kontrol_ac ORDER BY waktu DESC";
            $result = $conn->query($sql_select);

            if ($result->num_rows > 0) {
                echo "<h3>Log Data Status AC:</h3>";
                echo "<table>";
                echo "<tr><th>ID</th><th>Suhu (°C)</th><th>Kelembaban (%)</th><th>Status AC</th><th>Waktu</th></tr>";
                while ($row = $result->fetch_assoc()) {
                    echo "<tr><td>" . $row["id"] . "</td><td>" . $row["suhu"] . "</td><td>" . $row["kelembaban"] . "</td><td>" . $row["hasil_status"] . "</td><td>" . $row["waktu"] . "</td></tr>";
                }
                echo "</table>";
            } else {
                echo "Belum ada data yang tersimpan.";
            }

            echo '<br><button onclick="window.location.href=\'http://localhost/tugas3/kontrol.php\';">Kembali</button>';
        } else {
        ?>

            <!-- Form untuk menginput data suhu dan kelembaban -->
            <form method="POST" action="">
                <label for="suhu">Suhu (°C): </label>
                <input type="number" step="0.1" name="suhu" id="suhu" required>

                <label for="kelembaban">Kelembaban (%): </label>
                <input type="number" step="0.1" name="kelembaban" id="kelembaban" required>

                <input type="submit" value="Lihat Status AC">
            </form>

        <?php
        }

        // Proses data 
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $suhu = isset($_POST['suhu']) ? (float)$_POST['suhu'] : 0.0;
            $kelembaban = isset($_POST['kelembaban']) ? (float)$_POST['kelembaban'] : 0.0;

            // Fungsi kontrol AC berdasarkan suhu dan kelembaban
            function kontrolAC($suhu, $kelembaban) {
                if ($suhu < 18) {
                    return "AC Mati";
                } elseif ($suhu >= 18 && $suhu < 22) {
                    return $kelembaban < 50 ? "AC Menyala Rendah" : "AC Menyala Sedang";
                } elseif ($suhu >= 22 && $suhu < 30) {
                    return $kelembaban < 60 ? "AC Menyala Sedang" : "AC Menyala Tinggi";
                } else {
                    return "AC Menyala Sangat Tinggi";  
                }
            }

            $outputAC = kontrolAC($suhu, $kelembaban);

            // Menampilkan hasil 
            echo "<h3>Status AC:</h3>";
            echo "Suhu: " . $suhu . " °C<br>";
            echo "Kelembaban: " . $kelembaban . " %<br>";
            echo "Status AC: <strong>" . $outputAC . "</strong><br><br>";

            // Simpan hasil ke database
            $sql = "INSERT INTO kontrol_ac (suhu, kelembaban, hasil_status) 
                    VALUES ($suhu, $kelembaban, '$outputAC')";
            if ($conn->query($sql) === TRUE) {
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
        }

        if (!isset($_GET['action']) || $_GET['action'] != 'history') {
            echo '<button onclick="window.location.href=\'?action=history\';">Lihat Riwayat Status AC</button>';
        }

        $conn->close();
        ?>
    </div>

</body>
</html>
