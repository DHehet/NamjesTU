<?php

include 'zaglavlje.php';

function generiraj_dnevnik($rezultat)
{
    global $baza;

    header("Content-Type:application/xml");
    echo '<?xml version="1.0" encoding="utf-8"?><dnevnik>';

    while ($polje = $rezultat->fetch_array()) {
        $datum_vrijeme = $polje['datum_vrijeme'];
        $ime = $polje['ime'];
        $prezime = $polje['prezime'];
        $radnja = $polje['radnja'];
        $tip_zapisa = $polje['naziv'];

        echo "<zapis_dnevnik datum_vrijeme='$datum_vrijeme' ime='$ime' prezime='$prezime' radnja='$radnja' tip_zapisa='$tip_zapisa'/>";
    }
    echo "</dnevnik>";
}

if (isset($_SESSION['id_korisnik'])) {
    if ($_SESSION['uloga_korisnika'] == 3) {
        if ($_SERVER["REQUEST_METHOD"] == "GET") {
            if (isset($_GET['pretrazi']) && ($_GET['pretrazi']) != "") {
                $trazena_rijec = $_GET['pretrazi'];

                $upit = "SELECT d.datum_vrijeme, d.id_korisnik, d.radnja, k.ime, k.prezime, t_z.naziv
                FROM dnevnik_rada d
                INNER JOIN korisnik k ON
                d.id_korisnik = k.id_korisnik
                INNER JOIN tip_zapisa t_z ON
                d.id_tip_zapisa = t_z.id_tip_zapisa
                WHERE t_z.naziv LIKE '%" . $trazena_rijec . "%' OR k.ime LIKE '%" . $trazena_rijec . "%' OR k.prezime LIKE '%" . $trazena_rijec . "%' OR d.datum_vrijeme LIKE '%" . $trazena_rijec . "%';";

                if (isset($_GET['sortiraj_stupac']) && ($_GET['sortiraj_stupac']) != "" && isset($_GET['vrsta_sortiranja']) && ($_GET['vrsta_sortiranja']) != "") {
                    $sortiraj_stupac = $_GET['sortiraj_stupac'];
                    $vrsta_sortiranja = $_GET['vrsta_sortiranja'];

                    $upit = "SELECT d.datum_vrijeme, d.id_korisnik, d.radnja, k.ime, k.prezime, t_z.naziv
                    FROM dnevnik_rada d
                    INNER JOIN korisnik k ON
                    d.id_korisnik = k.id_korisnik
                    INNER JOIN tip_zapisa t_z ON
                    d.id_tip_zapisa = t_z.id_tip_zapisa
                    WHERE t_z.naziv LIKE '%" . $trazena_rijec . "%' OR k.ime LIKE '%" . $trazena_rijec . "%' OR k.prezime LIKE '%" . $trazena_rijec . "%' OR d.datum_vrijeme LIKE '%" . $trazena_rijec . "%' 
                    ORDER BY $sortiraj_stupac $vrsta_sortiranja;";
                }
            } elseif (isset($_GET['sortiraj_stupac']) && ($_GET['sortiraj_stupac']) != "" && isset($_GET['vrsta_sortiranja']) && ($_GET['vrsta_sortiranja']) != "") {
                $sortiraj_stupac = $_GET['sortiraj_stupac'];
                $vrsta_sortiranja = $_GET['vrsta_sortiranja'];

                $upit = "SELECT d.datum_vrijeme, d.id_korisnik, d.radnja, k.ime, k.prezime, t_z.naziv
                FROM dnevnik_rada d
                INNER JOIN korisnik k ON
                d.id_korisnik = k.id_korisnik
                INNER JOIN tip_zapisa t_z ON
                d.id_tip_zapisa = t_z.id_tip_zapisa
                GROUP BY datum_vrijeme
                ORDER BY $sortiraj_stupac $vrsta_sortiranja;";
            } else {
                $upit = "SELECT d.datum_vrijeme, d.id_korisnik, d.radnja, k.ime, k.prezime, t_z.naziv
                FROM dnevnik_rada d
                INNER JOIN korisnik k ON
                d.id_korisnik = k.id_korisnik
                INNER JOIN tip_zapisa t_z ON
                d.id_tip_zapisa = t_z.id_tip_zapisa
                GROUP BY datum_vrijeme;";
            }

            $rezultat = $baza->selectDB($upit);

            generiraj_dnevnik($rezultat);
        }
    }
}
