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
/*
file: bogtorvet.php
purpose: a list of caretakers and animal from the zoologisk_have database
*/

//require_once 'header.php'; // html header
require 'db.php'; // the mysqli object


$sql = "SELECT * FROM `Antikvariater`";

?>

<ul>

<?php
// looping out the result


mysqli_close($mysqli); 

require_once ('footer.php');
?>
</ul>

</body>
</html>