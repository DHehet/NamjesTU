<?php

require_once 'baza.class.php';

$baza = new Baza();

$korime = $_GET['korisnicko_ime'];

if (isset($korime)) {
    $baza->spojiDB();

    $upit = "SELECT * FROM korisnik WHERE korisnicko_ime = '$korime';";
    $rezultat = $baza->selectDB($upit);

    if ($rezultat->num_rows != 0) {
        echo 1;
    } else {
        echo 0;
    }
}
