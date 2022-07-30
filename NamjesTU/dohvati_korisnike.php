<?php
require_once 'zaglavlje.php';

function generiraj_korisnike($rezultat)
{
    header("Content-Type:application/xml");
    echo '<?xml version="1.0" encoding="utf-8"?><korisnici>';

    while ($polje = $rezultat->fetch_array()) {
        $id_korisnik = $polje['id_korisnik'];
        $ime = $polje['ime'];
        $prezime = $polje['prezime'];
        $korime = $polje['korisnicko_ime'];
        $email = $polje['email'];
        $mob_broj = $polje['mobilni_broj'];
        $broj_neusp_prijava = $polje['broj_neuspjesnih_prijava'];
        $uvjeti_koristenja = $polje['uvjeti_koristenja'];
        $status = $polje['naziv'];

        echo "<korisnik id_korisnik='$id_korisnik' ime='$ime' prezime='$prezime' korisnicko_ime='$korime' email='$email' mob_broj='$mob_broj' broj_neusp_prijava='$broj_neusp_prijava' uvjeti_koristenja='$uvjeti_koristenja' status='$status'/>";
    }
    echo "</korisnici>";
}
if (isset($_SESSION['id_korisnik'])) {
    if ($_SESSION['uloga_korisnika'] == 3) {
        if ($_SERVER["REQUEST_METHOD"] == "GET") {
            if (isset($_GET['pretrazi']) && ($_GET['pretrazi']) != "") {
                $trazena_rijec = $_GET['pretrazi'];

                $upit = "SELECT k.id_korisnik, k.ime, k.prezime, k.korisnicko_ime, k.mobilni_broj, 
                k.email, k.broj_neuspjesnih_prijava, k.uvjeti_koristenja, s_k.naziv
                FROM korisnik k
                INNER JOIN status_korisnika s_k ON
                k.id_status_korisnika = s_k.id_status_korisnika
                WHERE
                k.ime LIKE '%" . $trazena_rijec . "%' OR k.prezime LIKE '%" . $trazena_rijec . "%' OR k.korisnicko_ime LIKE '%" . $trazena_rijec . "%' OR k.mobilni_broj LIKE '%" . $trazena_rijec . "%' OR k.email LIKE '%" . $trazena_rijec . "%';";

                if (isset($_GET['sortiraj_stupac']) && ($_GET['sortiraj_stupac']) != "" && isset($_GET['vrsta_sortiranja']) && ($_GET['vrsta_sortiranja']) != "") {
                    $sortiraj_stupac = $_GET['sortiraj_stupac'];
                    $vrsta_sortiranja = $_GET['vrsta_sortiranja'];

                    $upit = "SELECT k.id_korisnik, k.ime, k.prezime, k.korisnicko_ime, k.mobilni_broj, 
                    k.email, k.broj_neuspjesnih_prijava, k.uvjeti_koristenja, s_k.naziv
                    FROM korisnik k
                    INNER JOIN status_korisnika s_k ON
                    k.id_status_korisnika = s_k.id_status_korisnika
                    WHERE
                    k.ime LIKE '%" . $trazena_rijec . "%' OR k.prezime LIKE '%" . $trazena_rijec . "%' OR k.korisnicko_ime LIKE '%" . $trazena_rijec . "%' OR k.mobilni_broj LIKE '%" . $trazena_rijec . "%' OR k.email LIKE '%" . $trazena_rijec . "%' 
                    ORDER BY $sortiraj_stupac $vrsta_sortiranja;";
                }
            } elseif (isset($_GET['sortiraj_stupac']) && ($_GET['sortiraj_stupac']) != "" && isset($_GET['vrsta_sortiranja']) && ($_GET['vrsta_sortiranja']) != "") {
                $sortiraj_stupac = $_GET['sortiraj_stupac'];
                $vrsta_sortiranja = $_GET['vrsta_sortiranja'];

                $upit = "SELECT k.id_korisnik, k.ime, k.prezime, k.korisnicko_ime, k.mobilni_broj, 
                k.email, k.broj_neuspjesnih_prijava, k.uvjeti_koristenja, s_k.naziv
                FROM korisnik k
                INNER JOIN status_korisnika s_k ON
                k.id_status_korisnika = s_k.id_status_korisnika
                ORDER BY $sortiraj_stupac $vrsta_sortiranja;";
            } else {
                $upit = "SELECT k.id_korisnik, k.ime, k.prezime, k.korisnicko_ime, k.mobilni_broj, 
                k.email, k.broj_neuspjesnih_prijava, k.uvjeti_koristenja, s_k.naziv
                FROM korisnik k
                INNER JOIN status_korisnika s_k ON
                k.id_status_korisnika = s_k.id_status_korisnika;";
            }

            $rezultat = $baza->selectDB($upit);

            generiraj_korisnike($rezultat);
        }

        if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['blokiraj']) && ($_GET['blokiraj']) != "") {
            $id_korisnika = $_GET['blokiraj'];

            $upit = "UPDATE korisnik SET broj_neuspjesnih_prijava = 3 
            WHERE id_korisnik = $id_korisnika;";
            $baza->updateDB($upit);

            $upit = "UPDATE korisnik SET id_status_korisnika = 2 
            WHERE id_korisnik = $id_korisnika;";
            $baza->updateDB($upit);
        }

        if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['otkljucaj']) && ($_GET['otkljucaj']) != "") {
            $id_korisnika = $_GET['otkljucaj'];

            $upit = "UPDATE korisnik SET broj_neuspjesnih_prijava = 0 
            WHERE id_korisnik = $id_korisnika;";
            $baza->updateDB($upit);

            $upit = "UPDATE korisnik SET id_status_korisnika = 1 
            WHERE id_korisnik = $id_korisnika;";
            $baza->updateDB($upit);
        }
    }
}
