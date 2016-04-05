<?php

try
{
	$verbinding = new PDO('mysql:host=localhost;dbname=project3_a', 'root', '');
	$verbinding->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $error)
{
	echo $error->getMessage();
}