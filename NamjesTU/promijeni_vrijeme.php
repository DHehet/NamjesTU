<?php

require_once 'zaglavlje.php';

$povratna = "";
$trenutacno_vrijeme = vrijeme_info();

if (!isset($_SESSION["id_korisnik"]) || $_SESSION["uloga_korisnika"] != 3) {
    header("Location: index.php");
    exit();
} elseif (isset($_SESSION['id_korisnik'])) {
    $id_korisnik = $_SESSION['id_korisnik'];
    $korime = $_SESSION['korisnicko_ime'];
    $datum_vrijeme = dohvati_vrijeme();

    $upit = "INSERT INTO dnevnik_rada (datum_vrijeme, radnja, id_korisnik, id_tip_zapisa) 
    VALUES ('$datum_vrijeme', 'Korisnik $korime je pristupio skripti: promijeni_vrijeme.php', $id_korisnik, 5);";

    $baza->updateDB($upit);
}

if (isset($_POST['btn-pomak'])) {
    pomakni_vrijeme();
    $povratna = "Vrijeme promijenjeno!";
    $trenutacno_vrijeme = vrijeme_info();

    $id_korisnik = $_SESSION['id_korisnik'];
    $korime = $_SESSION['korisnicko_ime'];

    $datum_vrijeme = dohvati_vrijeme();

    $upit = "INSERT INTO dnevnik_rada 
    (datum_vrijeme, radnja, id_korisnik, id_tip_zapisa) 
    VALUES ('$datum_vrijeme', 'Korisnik $korime je pomaknuo virtualno vrijeme', $id_korisnik, 5);";

    $baza->updateDB($upit);
} else {
    $povratna = "";
}

$naslov = "Promjena vremena";
$skripte = '';

$smarty->assign('naslov', $naslov);
$smarty->assign('skripte', $skripte);
$smarty->assign('povratna', $povratna);
$smarty->assign('trenutacno_vrijeme', $trenutacno_vrijeme);
$smarty->display('zaglavlje.tpl');
$smarty->display('promijeni_vrijeme.tpl');
$smarty->display('podnozje.tpl');
