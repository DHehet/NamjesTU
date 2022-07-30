<?php

require_once 'zaglavlje.php';

if (!isset($_SESSION["uloga_korisnika"])) {
    header("Location: index.php");
    exit();
}

$id_korisnik = $korime = "";
$id_korisnik = $_SESSION['id_korisnik'];
$korime = $_SESSION['korisnicko_ime'];

$datum_vrijeme = dohvati_vrijeme();

session_unset();
session_destroy();

$upit = "INSERT INTO dnevnik_rada (datum_vrijeme, radnja, id_korisnik, id_tip_zapisa)
VALUES ('$datum_vrijeme', 'Korisnik $korime se je odjavio', $id_korisnik, 3);";

$baza->updateDB($upit);

header("Location: index.php");