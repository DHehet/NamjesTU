<?php

require_once 'zaglavlje.php';

if (isset($_SESSION['id_korisnik'])) {
    $id_korisnik = $_SESSION['id_korisnik'];
    $korime = $_SESSION['korisnicko_ime'];
    $datum_vrijeme = dohvati_vrijeme();

    $upit = "INSERT INTO dnevnik_rada (datum_vrijeme, radnja, id_korisnik, id_tip_zapisa) 
    VALUES ('$datum_vrijeme', 'Korisnik $korime je pristupio skripti: index.php', $id_korisnik, 5);";

    $baza->updateDB($upit);
}

$naslov = 'Početna stranica';
$skripte = '';

$smarty->assign('naslov', $naslov);
$smarty->assign('skripte', $skripte);
$smarty->display('zaglavlje.tpl');
$smarty->display('index.tpl');
$smarty->display('podnozje.tpl');
