<?php
include_once './baza.class.php';

$baza = new Baza();
$baza->spojiDB();

function generiraj_status($rezultat)
{
    header("Content-Type:application/xml");
    echo '<?xml version="1.0" encoding="utf-8"?><statusi>';
    while ($polje = $rezultat->fetch_array()) {
        $id_status_namjestaja = $polje['id_status_namjestaja'];
        $naziv = $polje['naziv'];
        
        echo "<status id_status_namjestaja='$id_status_namjestaja' naziv='$naziv'/>";
    }
    echo "</statusi>";
}

if ($_SERVER["REQUEST_METHOD"] == "GET") {
    $upit = "SELECT * FROM status_namjestaja;";
    $rezultat = $baza->selectDB($upit);
    generiraj_status($rezultat);
}
