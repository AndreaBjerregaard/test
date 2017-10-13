<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Bogtorvet</title>
<link rel="stylesheet" href="stylesheet.css">
</head>

<body>
<header>
<?php
include("header.php");
?>
	</header>

<?php
	// Her har forsøgt at få den til at vise fejlen, jeg ikke har kunne finde.
	ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL); 
	

/*
file: bogtorvet.php
purpose: a list of books from the bogtorvet database
*/

//require_once 'header.php'; // html header
require 'db.php'; // the mysqli object


// sql'en er testet i MySQL hvor den virkede som den skulle.
$sql = "SELECT `Titel`,`Forfatter`,`Sprog`,`Tryk_år`,`Pris`
FROM Boeger 
ORDER BY `Titel` ASC";

$result =  $mysqli->query($sql); // query
?>

<ul>

<?php
	// Jeg har et problem med linje 44, som jeg ikke har kunnet løse, "Call to member on boolean".
// looping out the result
while($row = $result->fetch_assoc()){
		echo $row['Titel']. $row['Forfatter'] . $row['Sprog'] . $row['Tryk_år'] . $row['Pris'];
   }

mysqli_close($mysqli); 

require_once ('footer.php');
?>
</ul>
</body>
</html>