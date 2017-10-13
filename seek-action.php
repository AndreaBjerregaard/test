<link rel="stylesheet" href="stylesheet.css">
<?php
/*
file: seek-action.php
purpose: seek a work query
by: petj
*/
require_once "header.php";

/* from input to  query */
function search($what){
	    
		
		/* mysqli database connection */
		require_once "db.php";

		/* headline printed */		
		print "<h2>Searching: $what</h3>";
		
		/* SEARCH the sql */
		$sql = "SELECT * FROM `Boeger` WHERE (`Titel` LIKE '%" . $what . "%') ORDER BY `Titel`";
		//echo $sql;
		
		/* mysqli query */
		$result =  $mysqli->query($sql); // query

		/* loop out the result */
		while($row = $result->fetch_assoc()){
   	 		echo $row['Titel'] . "<br>";
   		}
   	
	mysqli_close($mysqli); 
				
	} // ends word

/* Execute the function if the OK button has been pressed */
if(isset($_GET['OK'])) {
	search($_GET['seek']);
}
?>