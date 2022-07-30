<?php
require_once 'zaglavlje.php';

function generiraj_kategorije_namjestaja($rezultat)
{
    global $baza;

    header("Content-Type:application/xml");
    echo '<?xml version="1.0" encoding="utf-8"?><kategorije>';

    while ($polje = $rezultat->fetch_array()) {
        $id_kategorija_namjestaja = $polje['id_kategorija_namjestaja'];
        $naziv = $polje['naziv'];

        $upit = "SELECT k.ime, k.prezime
        FROM korisnik k
        INNER JOIN moderator_kategorije m_k ON m_k.id_korisnik = k.id_korisnik
        INNER JOIN kategorija_namjestaja k_n ON m_k.id_kategorija_namjestaja = k_n.id_kategorija_namjestaja
        WHERE m_k.id_kategorija_namjestaja = $id_kategorija_namjestaja;";
        $moderator_ime = mysqli_fetch_array($baza->selectDB($upit))['ime'];
        $moderator_prezime = mysqli_fetch_array($baza->selectDB($upit))['prezime'];

        echo "<kategorija id_kategorija_namjestaja='$id_kategorija_namjestaja' naziv='$naziv' moderator_ime='$moderator_ime' moderator_prezime='$moderator_prezime'/>";
    }
    echo "</kategorije>";
}

if (isset($_SESSION['id_korisnik'])) {
    if ($_SESSION['uloga_korisnika'] == 3) {
        if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['azuriraj']) && ($_GET['azuriraj']) != "") {
            $id_kategorija_namjestaja = $_GET['azuriraj'];

            $upit = "SELECT k.ime, k.prezime, k_n.naziv, k_n.id_kategorija_namjestaja
            FROM korisnik k
            INNER JOIN moderator_kategorije m_k ON
            m_k.id_korisnik = k.id_korisnik
            INNER JOIN kategorija_namjestaja k_n ON
            m_k.id_kategorija_namjestaja = k_n.id_kategorija_namjestaja
            WHERE m_k.id_kategorija_namjestaja = $id_kategorija_namjestaja;";
            $rezultat = $baza->selectDB($upit);
            generiraj_kategorije_namjestaja($rezultat);
        } elseif ($_SERVER["REQUEST_METHOD"] == "GET") {
            if (isset($_GET['pretrazi']) && ($_GET['pretrazi']) != "") {
                $trazena_rijec = $_GET['pretrazi'];

                $upit = "SELECT k.ime, k.prezime, k_n.naziv, k_n.id_kategorija_namjestaja
                FROM korisnik k
                INNER JOIN moderator_kategorije m_k ON
                m_k.id_korisnik = k.id_korisnik
                INNER JOIN kategorija_namjestaja k_n ON
                m_k.id_kategorija_namjestaja = k_n.id_kategorija_namjestaja
                WHERE k.ime LIKE '%" . $trazena_rijec . "%' OR k.prezime LIKE '%" . $trazena_rijec . "%' OR k_n.naziv LIKE '%" . $trazena_rijec . "%';";

                if (isset($_GET['sortiraj_stupac']) && ($_GET['sortiraj_stupac']) != "" && isset($_GET['vrsta_sortiranja']) && ($_GET['vrsta_sortiranja']) != "") {
                    $sortiraj_stupac = $_GET['sortiraj_stupac'];
                    $vrsta_sortiranja = $_GET['vrsta_sortiranja'];

                    $upit = "SELECT k.ime, k.prezime, k_n.naziv, k_n.id_kategorija_namjestaja
                    FROM korisnik k
                    INNER JOIN moderator_kategorije m_k ON
                    m_k.id_korisnik = k.id_korisnik
                    INNER JOIN kategorija_namjestaja k_n ON
                    m_k.id_kategorija_namjestaja = k_n.id_kategorija_namjestaja
                    WHERE k.ime LIKE '%" . $trazena_rijec . "%' OR k.prezime LIKE '%" . $trazena_rijec . "%' OR k_n.naziv LIKE '%" . $trazena_rijec . "%' 
                    ORDER BY $sortiraj_stupac $vrsta_sortiranja;";
                }
            } elseif (isset($_GET['sortiraj_stupac']) && ($_GET['sortiraj_stupac']) != "" && isset($_GET['vrsta_sortiranja']) && ($_GET['vrsta_sortiranja']) != "") {
                $sortiraj_stupac = $_GET['sortiraj_stupac'];
                $vrsta_sortiranja = $_GET['vrsta_sortiranja'];

                $upit = "SELECT k.ime, k.prezime, k_n.naziv, k_n.id_kategorija_namjestaja
                FROM korisnik k
                INNER JOIN moderator_kategorije m_k ON
                m_k.id_korisnik = k.id_korisnik
                INNER JOIN kategorija_namjestaja k_n ON
                m_k.id_kategorija_namjestaja = k_n.id_kategorija_namjestaja
                ORDER BY $sortiraj_stupac $vrsta_sortiranja;";
            } else {
                $upit = "SELECT k.ime, k.prezime, k_n.naziv, k_n.id_kategorija_namjestaja
                FROM korisnik k
                INNER JOIN moderator_kategorije m_k ON
                m_k.id_korisnik = k.id_korisnik
                INNER JOIN kategorija_namjestaja k_n ON
                m_k.id_kategorija_namjestaja = k_n.id_kategorija_namjestaja;";
            }

            $rezultat = $baza->selectDB($upit);

            generiraj_kategorije_namjestaja($rezultat);
        }

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $naziv = $_POST['naziv'];
            $id_korisnik = $_POST['id_korisnik'];

            if (isset($_POST['id_kategorija_namjestaja']) && ($_POST['id_kategorija_namjestaja']) != '') {
                $id_kategorija_namjestaja = $_POST['id_kategorija_namjestaja'];

                $upit = "UPDATE kategorija_namjestaja 
                SET naziv='$naziv' 
                WHERE id_kategorija_namjestaja=$id_kategorija_namjestaja;";
                $baza->updateDB($upit);

                //UPDATE I MODERATORA U DRUGOJ TABLICI
                $upit = "UPDATE moderator_kategorije 
                SET id_korisnik='$id_korisnik'
                WHERE id_kategorija_namjestaja=$id_kategorija_namjestaja;";
                $baza->updateDB($upit);
            } else {
                $upit = "INSERT INTO kategorija_namjestaja (naziv) 
                VALUES ('$naziv')";
                $baza->updateDB($upit);

                //dohvat novog id-a
                $upit = "SELECT id_kategorija_namjestaja 
                FROM kategorija_namjestaja 
                ORDER BY id_kategorija_namjestaja DESC LIMIT 0, 1;";
                $novi_id_kategorije = mysqli_fetch_array($baza->selectDB($upit))['id_kategorija_namjestaja'];

                //UPDATE I U DRUGOJ TABLICI
                $upit = "INSERT INTO moderator_kategorije
                VALUES ($id_korisnik, $novi_id_kategorije);";
                $baza->updateDB($upit);
            }
        }

        if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['obrisi']) && ($_GET['obrisi']) != "") {
            $id_kategorija_namjestaja = $_GET['obrisi'];

            //dohvati id moderatora
            $upit = "SELECT id_korisnik FROM moderator_kategorije
            WHERE id_kategorija_namjestaja = $id_kategorija_namjestaja;";
            $id_korisnik = mysqli_fetch_array($baza->updateDB($upit))['id_korisnik'];

            //izbrisi id_kat_namj iz M:M tablic
            $upit = "DELETE FROM moderator_kategorije
            WHERE id_kategorija_namjestaja = $id_kategorija_namjestaja;";
            $baza->updateDB($upit);

            //izbrisi id_korisnika iz M:M tablic
            $upit = "DELETE FROM moderator_kategorije
            WHERE id_korisnik = $id_korisnik;";
            $baza->updateDB($upit);

            //izbrisi kategoriju
            $upit = "DELETE FROM kategorija_namjestaja
            WHERE id_kategorija_namjestaja = $id_kategorija_namjestaja;";
            $baza->updateDB($upit);
        }
    }
}
