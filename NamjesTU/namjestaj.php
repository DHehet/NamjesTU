<?php

require_once 'zaglavlje.php';

if (!isset($_SESSION["id_korisnik"]) || $_SESSION["uloga_korisnika"] < 2) {
    header("Location: index.php");
    exit();
} elseif (isset($_SESSION['id_korisnik'])) {
    $id_korisnik = $_SESSION['id_korisnik'];
    $korime = $_SESSION['korisnicko_ime'];
    $datum_vrijeme = dohvati_vrijeme();

    $upit = "INSERT INTO dnevnik_rada (datum_vrijeme, radnja, id_korisnik, id_tip_zapisa) 
    VALUES ('$datum_vrijeme', 'Korisnik $korime je pristupio skripti: namjestaj.php', $id_korisnik, 5);";

    $baza->updateDB($upit);
}

$naslov = "Namještaj";
$skripte = "
<script src=javascript/ajax_namjestaj.js></script>
<script src=javascript/ajax_ucitaj_kategorije.js></script>
<script src=javascript/ajax_ucitaj_status.js></script>";

$smarty->assign('naslov', $naslov);
$smarty->assign('skripte', $skripte);
$smarty->display('zaglavlje.tpl');
$smarty->display('namjestaj.tpl');
$smarty->display('podnozje.tpl');
