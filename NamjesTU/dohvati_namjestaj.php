<?php
require_once 'zaglavlje.php';

function generiraj_namjestaj($rezultat)
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
        $id_kategorija_namjestaja = $polje['id_kategorija_namjestaja'];
        $id_status_namjestaja = $polje['id_status_namjestaja'];

        $upit = "SELECT k_n.naziv FROM kategorija_namjestaja k_n
        INNER JOIN namjestaj n ON k_n.id_kategorija_namjestaja = n.id_kategorija_namjestaja
        WHERE k_n.id_kategorija_namjestaja = $id_kategorija_namjestaja;";
        $kategorija = mysqli_fetch_array($baza->selectDB($upit))['naziv'];

        $upit = "SELECT s_n.naziv FROM status_namjestaja s_n
        INNER JOIN namjestaj n ON s_n.id_status_namjestaja = n.id_status_namjestaja
        WHERE s_n.id_status_namjestaja = $id_status_namjestaja;";
        $status = mysqli_fetch_array($baza->selectDB($upit))['naziv'];

        echo "<namjestaj id_namjestaj='$id_namjestaj' naziv='$naziv' cijena='$cijena' sirina='$sirina' duzina='$duzina' visina='$visina' boja='$boja' stanje_zaliha='$stanje_zaliha' kategorija_namjestaja='$kategorija' status_namjestaja='$status'/>";
    }
    echo "</namjestaji>";
}

if (isset($_SESSION['id_korisnik'])) {
    if ($_SESSION['uloga_korisnika'] > 1) {
        /*
        $id_korisnik = $_SESSION['id_korisnik'];

        $upit = "SELECT m_k.id_kategorija_namjestaja
        FROM korisnik k
        INNER JOIN moderator_kategorije m_k ON m_k.id_korisnik = k.id_korisnik
        INNER JOIN kategorija_namjestaja k_n ON m_k.id_kategorija_namjestaja = k_n.id_kategorija_namjestaja
        WHERE m_k.id_korisnik = $id_korisnik;";
        $moderator_kategorije = mysqli_fetch_array($baza->selectDB($upit))['id_kategorija_namjestaja'];
        
        if($moderator_kategorije->num_rows == 0)
        {
            echo "NEMA OVLASTI ZA NISTA!";
            exit();
        }*/

        if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['azuriraj']) && ($_GET['azuriraj']) != "") {
            $id_namjestaj = $_GET['azuriraj'];

            $upit = "SELECT n.id_namjestaj, n.naziv, n.cijena_HRK, n.sirina_cm, n.duzina_cm, n.visina_cm, n.boja, n.stanje_zaliha, n.id_kategorija_namjestaja, n.id_status_namjestaja
            FROM namjestaj n
            WHERE n.id_namjestaj = $id_namjestaj;";
            $rezultat = $baza->selectDB($upit);
            generiraj_namjestaj($rezultat);
        } elseif ($_SERVER["REQUEST_METHOD"] == "GET") {
            if (isset($_GET['pretrazi']) && ($_GET['pretrazi']) != "") {
                $trazena_rijec = $_GET['pretrazi'];

                $upit = "SELECT n.id_namjestaj, n.naziv, n.cijena_HRK, n.sirina_cm, n.duzina_cm, n.visina_cm, n.boja, n.stanje_zaliha, n.id_kategorija_namjestaja, n.id_status_namjestaja
                FROM namjestaj n
                WHERE n.naziv LIKE '%" . $trazena_rijec . "%' OR n.cijena_HRK LIKE '%" . $trazena_rijec . "%' OR n.sirina_cm LIKE '%" . $trazena_rijec . "%' OR n.duzina_cm LIKE '%" . $trazena_rijec . "%' OR n.visina_cm LIKE '%" . $trazena_rijec . "%' OR n.boja LIKE '%" . $trazena_rijec . "%';";

                if (isset($_GET['sortiraj_stupac']) && ($_GET['sortiraj_stupac']) != "" && isset($_GET['vrsta_sortiranja']) && ($_GET['vrsta_sortiranja']) != "") {
                    $sortiraj_stupac = $_GET['sortiraj_stupac'];
                    $vrsta_sortiranja = $_GET['vrsta_sortiranja'];

                    $upit = "SELECT n.id_namjestaj, n.naziv, n.cijena_HRK, n.sirina_cm, n.duzina_cm, n.visina_cm, n.boja, n.stanje_zaliha, n.id_kategorija_namjestaja, n.id_status_namjestaja
                    FROM namjestaj n
                    WHERE n.naziv LIKE '%" . $trazena_rijec . "%' OR n.cijena_HRK LIKE '%" . $trazena_rijec . "%' OR n.sirina_cm LIKE '%" . $trazena_rijec . "%' OR n.duzina_cm LIKE '%" . $trazena_rijec . "%' OR n.visina_cm LIKE '%" . $trazena_rijec . "%' OR n.boja LIKE '%" . $trazena_rijec . "%'
                    ORDER BY $sortiraj_stupac $vrsta_sortiranja;";
                }
            } elseif (isset($_GET['sortiraj_stupac']) && ($_GET['sortiraj_stupac']) != "" && isset($_GET['vrsta_sortiranja']) && ($_GET['vrsta_sortiranja']) != "") {
                $sortiraj_stupac = $_GET['sortiraj_stupac'];
                $vrsta_sortiranja = $_GET['vrsta_sortiranja'];

                $upit = "SELECT n.id_namjestaj, n.naziv, n.cijena_HRK, n.sirina_cm, n.duzina_cm, n.visina_cm, n.boja, n.stanje_zaliha, n.id_kategorija_namjestaja, n.id_status_namjestaja
                FROM namjestaj n
                ORDER BY $sortiraj_stupac $vrsta_sortiranja;";
            } else {
                $upit = "SELECT n.id_namjestaj, n.naziv, n.cijena_HRK, n.sirina_cm, n.duzina_cm, n.visina_cm, n.boja, n.stanje_zaliha, n.id_kategorija_namjestaja, n.id_status_namjestaja
                FROM namjestaj n;";
            }

            $rezultat = $baza->selectDB($upit);

            generiraj_namjestaj($rezultat);
        }
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $naziv = $_POST['naziv'];
            $cijena = $_POST['cijena'];
            $sirina = $_POST['sirina'];
            $duzina = $_POST['duzina'];
            $visina = $_POST['visina'];
            $boja = $_POST['boja'];
            $stanje_zaliha = $_POST['stanje_zaliha'];
            $kategorija = $_POST['kategorija'];
            $status = $_POST['status'];

            if (isset($_POST['id_namjestaj']) && ($_POST['id_namjestaj']) != '') {
                $id_namjestaj = $_POST['id_namjestaj'];

                $upit = "UPDATE namjestaj 
                SET naziv = '$naziv', cijena_HRK = '$cijena', sirina_cm = '$sirina', duzina_cm ='$duzina', visina_cm = '$visina', boja = '$boja', stanje_zaliha = '$stanje_zaliha', id_kategorija_namjestaja = '$kategorija', id_status_namjestaja = '$status'
                WHERE id_namjestaj = $id_namjestaj;";
                $baza->updateDB($upit);
            } else {
                $upit = "INSERT INTO namjestaj (naziv, cijena_HRK, sirina_cm, duzina_cm, visina_cm, boja, stanje_zaliha, id_kategorija_namjestaja, id_status_namjestaja) 
                VALUES ('$naziv', '$cijena', '$sirina', '$duzina', '$visina', '$boja', '$stanje_zaliha', '$kategorija', '$status');";
                $baza->updateDB($upit);
            }
        }

        if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['obrisi']) && ($_GET['obrisi']) != "") {
            $id_namjestaj = $_GET['obrisi'];

            //izbrisi namjestaj
            $upit = "DELETE FROM namjestaj
            WHERE id_namjestaj = $id_namjestaj;";
            $baza->updateDB($upit);
        }
    }
}
