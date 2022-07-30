<?php
require_once 'zaglavlje.php';

function generiraj_narudzbe($rezultat)
{
    global $baza;

    header("Content-Type:application/xml");
    echo '<?xml version="1.0" encoding="utf-8"?><narudzbe>';

    while ($polje = $rezultat->fetch_array()) {
        //$id_korisnik = $polje['id_korisnik'];
        $id_namjestaj = $polje['broj_narudzbe'];
        $datum_vrijeme_kreiranja = $polje['datum_vrijeme_kreiranja'];
        $ukupna_cijena = $polje['ukupna_cijena'];
        $datum_vrijeme_isporuke = $polje['datum_vrijeme_isporuke'];
        $id_status_narudzbe = $polje['id_status_narudzbe'];
        $id_korisnik = $polje['id_korisnik'];

        $upit = "SELECT s_n.naziv
        FROM status_narudzbe s_n
        INNER JOIN narudzba n ON n.id_status_narudzbe = s_n.id_status_narudzbe
        WHERE s_n.id_status_narudzbe = $id_status_narudzbe;";
        $status = mysqli_fetch_array($baza->selectDB($upit))['naziv'];

        echo "<narudzba broj_narudzbe = '$id_namjestaj' datum_vrijeme_kreiranja = '$datum_vrijeme_kreiranja' ukupna_cijena = '$ukupna_cijena' datum_vrijeme_isporuke = '$datum_vrijeme_isporuke' status_narudzbe = '$status' id_korisnik = '$id_korisnik'/>";
    }
    echo "</narudzbe>";
}
if (isset($_SESSION['id_korisnik'])) {
    if ($_SERVER["REQUEST_METHOD"] == "GET") {
        $id_korisnik = $_SESSION['id_korisnik'];

        if (isset($_GET['pretrazi']) && ($_GET['pretrazi']) != "") {
            $trazena_rijec = $_GET['pretrazi'];

            $upit = "SELECT n.broj_narudzbe, n.datum_vrijeme_kreiranja, n.ukupna_cijena, n.datum_vrijeme_isporuke, n.id_status_narudzbe, 
            n.id_korisnik
            FROM narudzba n
            INNER JOIN korisnik k ON n.id_korisnik = k.id_korisnik
            WHERE k.id_korisnik = $id_korisnik 
            AND
            n.datum_vrijeme_kreiranja LIKE '%" . $trazena_rijec . "%' OR n.ukupna_cijena LIKE '%" . $trazena_rijec . "%' OR n.datum_vrijeme_isporuke LIKE '%" . $trazena_rijec . "%' OR n.id_status_narudzbe LIKE '%" . $trazena_rijec . "%' OR n.id_korisnik LIKE '%" . $trazena_rijec . "%';";

            if (isset($_GET['sortiraj_stupac']) && ($_GET['sortiraj_stupac']) != "" && isset($_GET['vrsta_sortiranja']) && ($_GET['vrsta_sortiranja']) != "") {
                $sortiraj_stupac = $_GET['sortiraj_stupac'];
                $vrsta_sortiranja = $_GET['vrsta_sortiranja'];

                $upit = "SELECT n.broj_narudzbe, n.datum_vrijeme_kreiranja, n.ukupna_cijena, n.datum_vrijeme_isporuke, n.id_status_narudzbe, 
                n.id_korisnik
                FROM narudzba n
                INNER JOIN korisnik k ON n.id_korisnik = k.id_korisnik
                WHERE k.id_korisnik = $id_korisnik 
                AND
                n.datum_vrijeme_kreiranja LIKE '%" . $trazena_rijec . "%' OR n.ukupna_cijena LIKE '%" . $trazena_rijec . "%' OR n.datum_vrijeme_isporuke LIKE '%" . $trazena_rijec . "%' OR n.id_status_narudzbe LIKE '%" . $trazena_rijec . "%' OR n.id_korisnik LIKE '%" . $trazena_rijec . "%' 
                ORDER BY $sortiraj_stupac $vrsta_sortiranja;";
            }
        } elseif (isset($_GET['sortiraj_stupac']) && ($_GET['sortiraj_stupac']) != "" && isset($_GET['vrsta_sortiranja']) && ($_GET['vrsta_sortiranja']) != "") {
            $sortiraj_stupac = $_GET['sortiraj_stupac'];
            $vrsta_sortiranja = $_GET['vrsta_sortiranja'];

            $upit = "SELECT n.broj_narudzbe, n.datum_vrijeme_kreiranja, n.ukupna_cijena, n.datum_vrijeme_isporuke, n.id_status_narudzbe, 
            n.id_korisnik
            FROM narudzba n
            INNER JOIN korisnik k ON n.id_korisnik = k.id_korisnik
            WHERE k.id_korisnik = $id_korisnik
            ORDER BY $sortiraj_stupac $vrsta_sortiranja;";
        } else {
            $upit = "SELECT n.broj_narudzbe, n.datum_vrijeme_kreiranja, n.ukupna_cijena, n.datum_vrijeme_isporuke, n.id_status_narudzbe, 
            n.id_korisnik
            FROM narudzba n
            INNER JOIN korisnik k ON n.id_korisnik = k.id_korisnik
            WHERE k.id_korisnik = $id_korisnik;";
        }

        $rezultat = $baza->selectDB($upit);

        generiraj_narudzbe($rezultat);
    }

    if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['preuzmi']) && ($_GET['preuzmi']) != "") {
        $id_narudzba = $_GET['preuzmi'];

        $upit = "UPDATE narudzba SET id_status_narudzbe = 4 
            WHERE broj_narudzbe = $id_narudzba;";
        $baza->updateDB($upit);
    }
}
