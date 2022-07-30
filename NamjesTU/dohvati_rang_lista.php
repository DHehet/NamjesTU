<?php

include 'zaglavlje.php';

function generiraj_rang_listu($rezultat)
{
    global $baza;

    header("Content-Type:application/xml");
    echo '<?xml version="1.0" encoding="utf-8"?><namjestaji>';

    while ($polje = $rezultat->fetch_array()) {
        $id_namjestaj = $polje['id_namjestaj'];
        $naziv = $polje['naziv'];
        $cijena = $polje['cijena_HRK'];
        $sirina = $polje['sirina_cm'];
        $duzina = $polje['duzina_cm'];
        $visina = $polje['visina_cm'];
        $boja = $polje['boja'];
        $stanje_zaliha = $polje['stanje_zaliha'];
        $id_kategorija = $polje['id_kategorija_namjestaja'];
        $id_status = $polje['id_status_namjestaja'];

        $upit = "SELECT k_n.naziv FROM kategorija_namjestaja k_n
        INNER JOIN namjestaj n ON k_n.id_kategorija_namjestaja = n.id_kategorija_namjestaja
        WHERE k_n.id_kategorija_namjestaja = $id_kategorija;";
        $kategorija = mysqli_fetch_array($baza->selectDB($upit))['naziv'];

        $upit = "SELECT s_n.naziv FROM status_namjestaja s_n
        INNER JOIN namjestaj n ON s_n.id_status_namjestaja = n.id_status_namjestaja
        WHERE s_n.id_status_namjestaja = $id_status;";
        $status = mysqli_fetch_array($baza->selectDB($upit))['naziv'];

        echo "<namjestaj id_namjestaj='$id_namjestaj' naziv='$naziv' cijena='$cijena' sirina='$sirina' duzina='$duzina' visina='$visina' boja='$boja' stanje_zaliha='$stanje_zaliha' kategorija='$kategorija' status='$status'/>";
    }
    echo "</namjestaji>";
}

if ($_SERVER["REQUEST_METHOD"] == "GET") {
    if (isset($_GET['pretrazi']) && ($_GET['pretrazi']) != "") {
        $trazena_rijec = $_GET['pretrazi'];

        $upit = "SELECT * FROM namjestaj
        WHERE naziv LIKE '%" . $trazena_rijec . "%' OR cijena_HRK LIKE '%" . $trazena_rijec . "%' OR sirina_cm LIKE '%" . $trazena_rijec . "%' OR duzina_cm LIKE '%" . $trazena_rijec . "%' OR visina_cm LIKE '%" . $trazena_rijec . "%' OR boja LIKE '%" . $trazena_rijec . "%';";

        if (isset($_GET['sortiraj_stupac']) && ($_GET['sortiraj_stupac']) != "" && isset($_GET['vrsta_sortiranja']) && ($_GET['vrsta_sortiranja']) != "") {
            $sortiraj_stupac = $_GET['sortiraj_stupac'];
            $vrsta_sortiranja = $_GET['vrsta_sortiranja'];

            $upit = "SELECT * FROM namjestaj
            WHERE naziv LIKE '%" . $trazena_rijec . "%' OR cijena_HRK LIKE '%" . $trazena_rijec . "%' OR sirina_cm LIKE '%" . $trazena_rijec . "%' OR duzina_cm LIKE '%" . $trazena_rijec . "%' OR visina_cm LIKE '%" . $trazena_rijec . "%' OR boja LIKE '%" . $trazena_rijec . "%' 
            ORDER BY $sortiraj_stupac $vrsta_sortiranja;";
        }
    } elseif (isset($_GET['sortiraj_stupac']) && ($_GET['sortiraj_stupac']) != "" && isset($_GET['vrsta_sortiranja']) && ($_GET['vrsta_sortiranja']) != "") {
        $sortiraj_stupac = $_GET['sortiraj_stupac'];
        $vrsta_sortiranja = $_GET['vrsta_sortiranja'];

        $upit = "SELECT * FROM namjestaj 
        ORDER BY $sortiraj_stupac $vrsta_sortiranja;";
    } else {
        $upit = "SELECT * FROM namjestaj;";
    }

    $rezultat = $baza->selectDB($upit);

    generiraj_rang_listu($rezultat);
}
