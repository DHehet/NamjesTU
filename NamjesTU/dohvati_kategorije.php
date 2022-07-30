<?php
include_once './baza.class.php';

$baza = new Baza();
$baza->spojiDB();

function generiraj_kategorije($rezultat)
{
    header("Content-Type:application/xml");
    echo '<?xml version="1.0" encoding="utf-8"?><kategorije>';
    while ($polje = $rezultat->fetch_array()) {
        $id_kategorija_namjestaja = $polje['id_kategorija_namjestaja'];
        $naziv = $polje['naziv'];
        
        echo "<kategorija id_kategorija_namjestaja='$id_kategorija_namjestaja' naziv='$naziv'/>";
    }
    echo "</kategorije>";
}

if ($_SERVER["REQUEST_METHOD"] == "GET") {
    $upit = "SELECT * FROM kategorija_namjestaja;";
    $rezultat = $baza->selectDB($upit);
    generiraj_kategorije($rezultat);
}
