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
	//require_once 'header.php'; // html header
require 'db.php'; // the mysqli object
	require_once( "seek-form.php");
	require_once( "seek-action.php");
	?>
<?php
/*
file: zoo.php
purpose: a list of caretakers and animal from the zoologisk_have database
*/


$sql = "SELECT *
FROM Boghandel, Antikvariater, Boeger
WHERE Antikvariater.`Antikvariat_id` = Boghandel.`Antikvariat_id`
AND Boeger.`Bog_id` = Boghandel.`Bog_id` 
ORDER BY `Antikvariater`.`Navn` ASC";

$result =  $mysqli->query($sql); // query
?>

<ul>

<?php
// looping out the result
while($row = $result->fetch_assoc()){
		echo "<li>". $row['Navn'] . " har " . $row['Titel'] . " på lager ". "</li>";
   }

mysqli_close($mysqli); 

require_once ('footer.php');
?>
</ul>
</body>
</html>