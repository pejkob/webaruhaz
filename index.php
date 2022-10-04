<!DOCTYPE html>
<html lang="hu">
<head>
<meta charset="UTF-8">
	<title>kandoikt webáruháza</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="p-5 bg-primary text-white text-center">
  <h1>KANDOIKT WEBÁRUHÁZA</h1>
  <p>Kandó Kálmán Informatikai Technikum</p> 
</div>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link active" href="index.php">Minden termék</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="videokamera.php">Videókamera</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="telefon.php">Telefon</a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="okosora.php">Okosóra</a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="televizio.php">Televízió</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="laptop.php">Laptop</a>
      </li>
    </ul>
  </div>
</nav>

<div class="container-fluid">
<table class="table table-striped">
<br>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "webaruhaz";
//$dbname = "a saját adatbázis neve";


// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
  die("Kapcsolódási hiba: " . mysqli_connect_error());
}

$sql = "SELECT * FROM termek";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  // output data of each row
  echo "<tr>";  
    echo 
    "<th>ID</th>" .
    "<th>Termék neve</th> ".
    "<th>Kategória</th> " .
    "<th>Termék ára</th>" .
    //"<th>Termék képe nagy</th> " .
    "<th>Fotó</th>". 
    "<th>Mennyiség</th>";
  echo "</tr>";

  while($row = mysqli_fetch_assoc($result)) {
  
    echo "<tr>" ;

    echo "<td>" .$row["id"]. "</td>" .
     "<td>" .$row["termek_neve"]."</td>" .
     "<td>" .$row["kategoria"]."</td>" .
     "<td>" .$row["termek_ara"]."</td>" ;

    print("<td><img src=\"photo/termek_kepe_nagy/$row[termek_kepe_nagy]\" alt=\"Hiányzik a kép!\"
     height=\"100\" widht=\"200\" _class=\"img-fluid\" style=\"max-width=\"200\"\"></td>");
	 
    //"<td>" .$row["termek_kepe_nagy"]."</td>" .    
	  //"<td>" .$row["termek_kepe_kicsi"]."</td>" .
	 
     echo "<td>" .$row["mennyiseg"]."</td>" ;
     echo "</tr>" ;
  }
} else {
  echo "A hiba nem az Ön készülékében van!";
}

mysqli_close($conn);
?>

</table>
</div>


<div class="mt-5 p-4 bg-dark text-white text-center">
  <p>Készítette: kandoikt<br>2022/2023-as tanév</p>
</div>
</body>

<html>
