<!DOCTYPE html>
<html lang="HU">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pejkó Bálint Webáruház</title>
</head>
<body>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "webaruhaz";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: ". mysqli_connect() );
}
echo "Az adatbázishoz kapcsolódtam!". "<br>"."<br>";
$sql = "SELECT * FROM termek";
$result = mysqli_query($conn,$sql);

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
        echo $row["id"]. " ". $row["termek_neve"]. " " . $row["kategoria"] . " " . $row["termek_ara"]. " ". $row["termek_kepe_nagy"]. " ". $row["termek_kepe_kicsi"]. " ". $row["mennyiseg"]. "<br>";
    }
} else {
    echo "0 results";
}

mysqli_close($conn);
?>
</body>
</html>