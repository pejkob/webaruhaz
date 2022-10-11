<!DOCTYPE html>
<html lang="hu">
<head>
<meta charset="UTF-8">
	<title>IKT Projektmunka</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="p-5 bg-dark text-white text-center">
  <h1>IKT Projektmunka</h1>
  <p>Dobos Levente | Harsányi Roland | Pejkó Bálint | Szesztai Péter</p> 
</div>
<nav class="navbar navbar-expand-sm bg-secondary navbar-secondary">
  <div class="container-fluid">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link active" href="index.php">Minden termek</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="rts.php">RTS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="scifi.php">Sci-fi</a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="survival.php">Survival</a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="simulation.php">Simulation</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="horror.php">Horror</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="racing.php">Racing</a>
      </li>
    </ul>
  </div>
</nav>

<div class="container-fluid">
<table class="table table-striped">
<br>
<?php
$servername = "localhost";
$username = "webaruhaz_pr";
$password = "&rsuzu(%K%x!fn^D";
$dbname = "webaruhaz_pr";

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
    "<th>Fotó</th>". 
    "<th>Termék neve</th> ".
    "<th>Kategória</th> " .
    "<th>Termék ára</th>" .
    //"<th>Termék képe nagy</th> " .
   
    "<th>Mennyiség</th>";
  echo "</tr>";

  while($row = mysqli_fetch_assoc($result)) {
  
    echo "<tr>" ;
    print("<td><img src=\"photo/nagykep/$row[termek_kepe_nagy]\" alt=\"Hiányzik a kép!\"
    height=\"100\" widht=\"200\" _class=\"img-fluid\" style=\"max-width=\"200\"\"></td>");
  
    echo 
     "<td>" .$row["termek_neve"]."</td>" .
     "<td>" .$row["kategoria"]."</td>" .
     "<td>" .$row["termek_ara"]."</td>" ;

    
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
  <p>Kandó Kálmán Informatikai Technikum<br>2022/2023-as tanev</p>
</div>
</body>

<html>