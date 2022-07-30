<?php

require_once 'zaglavlje.php';

if (!isset($_SESSION["id_korisnik"])){
    header("Location: index.php");
    exit();
} elseif (isset($_SESSION['id_korisnik'])) {
    $id_korisnik = $_SESSION['id_korisnik'];
    $korime = $_SESSION['korisnicko_ime'];
    $datum_vrijeme = dohvati_vrijeme();

    $upit = "INSERT INTO dnevnik_rada (datum_vrijeme, radnja, id_korisnik, id_tip_zapisa) 
    VALUES ('$datum_vrijeme', 'Korisnik $korime je pristupio skripti: narudzba.php', $id_korisnik, 5);";

    $baza->updateDB($upit);
}

$naslov = "Narudžbe";
$skripte = "
<script src=javascript/ajax_narudzba.js></script>";

$smarty->assign('naslov', $naslov);
$smarty->assign('skripte', $skripte);
$smarty->display('zaglavlje.tpl');
$smarty->display('narudzba.tpl');
$smarty->display('podnozje.tpl');
