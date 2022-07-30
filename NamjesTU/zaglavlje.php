<?php

require_once 'vanjske_biblioteke/smarty-4.0.0/libs/Smarty.class.php';
include_once 'baza.class.php';
include_once 'pomak_vremena.php';

session_start();

$baza = new Baza();
$baza->spojiDB();

$smarty = new Smarty();
$smarty->setTemplateDir('templates')
        ->setCompileDir('templates_c')
        ->setPluginsDir(SMARTY_PLUGINS_DIR)
        ->setCacheDir('cache')
        ->setConfigDir('configs');

if (!isset($_COOKIE['uvjeti_koristenja'])) {
        $uvjeti_koristenja = 'FALSE';

        $skocni_prozor = '
        <div id="skocni-prozor">
            <div id="sadrzaj">
                <span>Molimo Vas da prihvatite uvjete korištenja kako biste mogli koristiti ovu web stranicu.</span><br>
                <button id="btn-uvjeti-koristenja">Prihvaćam</button>
            </div>
        </div>';
} else {
        $uvjeti_koristenja = 'TRUE';
        $skocni_prozor = '';
}

if (isset($_SESSION['id_korisnik'])) {
        $pozdravna_poruka = "Dobro došli, {$_SESSION['korisnicko_ime']}";

        if ($_SESSION['uloga_korisnika'] == 1) {
                $meni = '
                <li><a href="namjestaj.php">Popis namještaja</a></li>
                <li><a href="narudzba.php">Narudžbe</a></li>
                <li><a href="">Statistika</a></li>
                <li><a href="rang_lista.php">Rang lista</a></li>
                <li><a href="">Dokumentacija</a></li>
                <li><a href="">O autoru</a></li>
                <li><a href="odjava.php">Odjava</a></li>';
        } elseif ($_SESSION['uloga_korisnika'] == 2) {
                $meni = '
                <li><a href="namjestaj.php">Popis namještaja</a></li>
                <li><a href="narudzba.php">Narudžbe</a></li>
                <li><a href="">Statistika</a></li>
                <li><a href="rang_lista.php">Rang lista</a></li>
                <li><a href="">Dokumentacija</a></li>
                <li><a href="">O autoru</a></li>
                <li><a href="odjava.php">Odjava</a></li>';
        } elseif ($_SESSION['uloga_korisnika'] == 3) {
                $meni = '
                <li><a href="namjestaj.php">Popis namještaja</a></li>
                <li><a href="kategorije_namjestaja.php">Kategorije namještaja</a></li>
                <li><a href="narudzba.php">Narudžbe</a></li>
                <li><a href="">Popusti</a></li>
                <li><a href="">Statistika</a></li>
                <li><a href="rang_lista.php">Rang lista</a></li>
                <li><a href="korisnici.php">Popis korisnika</a></li>
                <li><a href="dnevnik.php">Dnevnik sustava</a></li>
                <li><a href="promijeni_vrijeme.php">Pomak vremena</a></li>
                <li><a href="">Dokumentacija</a></li>
                <li><a href="">O autoru</a></li>
                <li><a href="odjava.php">Odjava</a></li>';
        }
} else {
        $pozdravna_poruka = "";

        $meni = '
        <li><a href="rang_lista.php">Rang lista</a></li>
        <li><a href="">Dokumentacija</a></li>
        <li><a href="">O autoru</a></li>
        <li><a href="prijava.php">Prijava</a></li>
        <li><a href="registracija.php">Registracija</a></li>';
}

$smarty->assign('uvjeti_koristenja', $uvjeti_koristenja);
$smarty->assign('pozdravna_poruka', $pozdravna_poruka);
$smarty->assign('meni', $meni);
$smarty->assign('skocni_prozor', $skocni_prozor);