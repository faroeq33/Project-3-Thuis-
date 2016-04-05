<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>PHP-filter</title>
	<link rel="stylesheet" href="stylesheet.css">
</head>
<body>
	<form action="<?php $_SERVER['PHP_SELF']; ?>" method="POST">
		<tr>
			<td><input type="text" name="naam" placeholder="Naam"></td>
		</tr>
		<tr>
			<td><input type="text" name="leeftijd" placeholder="leeftijd"></td>
		</tr>
		<tr>
			<td><input type="text" name="E-mail" placeholder="E-mail"></td>
		</tr>
		 <input type="submit" value="Submit">
	</form>
</body>
</html>
<?php 
$arrayName = array('naam' => '19jaar' );