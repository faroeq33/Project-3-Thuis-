<?php

$content = new TemplatePower("html/gebruikers.html");
$content->prepare();

$verbinding= new PDO('mysql:host=localhost;dbname=project3_a', 'root', '');

$getUsers = $verbinding->query("SELECT voornaam, achternaam, email
                                FROM gebruikers");

while($gebruikers = $getUsers->fetch(PDO::FETCH_ASSOC)){
    $content->newBlock("RIJ");
    $content->assign(array(
       "VOORNAAM" => $gebruikers['voornaam'],
        "ACHTERNAAM" => $gebruikers['achternaam'],
        "EMAIL" => $gebruikers['email']
    ));
}
