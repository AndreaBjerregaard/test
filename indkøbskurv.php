<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Indkøbskurv</title>
<link rel="stylesheet" href="stylesheet.css">
</head>


<header>
<?php
include("header.php");
?>
	</header>
  <legend><h1 id="IN">Marker de bøger du gerne vil føje til din kurv.</h1></legend>
  
    <fieldset>
<form action="action2.php">
 
  <input type="radio" name="bog" value="Kampen_om_øen" checked> Kampen om øen<br>
  <input type="radio" name="bog" value="Holger_Danske"> Holger Danske<br> 
<input type="radio" name="bog" value="Lægekunst_for_krop_sjæl_og_ånd"> Lægekunst for krop, sjæl og ånd<br>
  <input type="radio" name="bog" value="Lykke-Peer"> Lykke-Peer<br>
  <input type="radio" name="bog" value="Spind_og_bind"> Spind og bind<br> 
<input type="radio" name="bog" value="Underground_No.8."> Underground No.8.<br>
<br>
  <input type="submit" value="Submit">

</form>
</fieldset>
	
</html>