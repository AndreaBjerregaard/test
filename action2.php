<?php
/**
 * file: action.php
 * purpose: INSERT INTO
**/

$sql= "INSERT INTO 'Indkøbskurv' (`Titel`) VALUES (NULL, '" . $_GET['bog'] . "')";
echo $sql;

require_once "db.php"; // database connect



		if($_GET) { 
									
				// INSERT
				if( $insert = $mysqli->query($sql) ){
					echo "<p>Dine valg er gemt: $fn $ln - Mange tak</p>";
					echo "<h2>SQL</h2> <pre>" . $sql ."</pre>";
				} else {
					echo "INSERT not possible. Check your SQL.";
				}
		
			}
		else {
			echo "<p>Error: Use the form please. No GET got.</p>";
		}
?>

