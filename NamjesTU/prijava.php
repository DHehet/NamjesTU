<?php

require_once 'zaglavlje.php';

if (isset($_SESSION["id_korisnik"])) {
    header("Location: index.php");
    exit();
}

$korime_greska = $lozinka_greska = $povratna = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $korime = $_POST['korime'];
    $lozinka = $_POST['lozinka'];

    function prazno_polje($polje)
    {
        $greska = '';

        if (empty($polje) || strlen(trim($polje)) == 0) {
            $greska = 'Ovo polje je obavezno!';
        } else {
            $greska = '';
        }

        return $greska;
    }

    function korime_provjera()
    {
        global $korime_greska, $korime;

        if ($korime_greska = prazno_polje($korime))
            return false;
        elseif (strlen(trim($korime)) < 5 || strlen(trim($korime)) > 25) {
            $korime_greska = "Korisničko ime mora biti u rasponu 5-25 znakova!";
        } elseif (!preg_match("/^[a-zA-Z0-9ćčđšžĆČĐŠŽ_-]*$/", $korime)) {
            $korime_greska = "Ne smijete koristiti simbole različite od '_' i '-'";
        } else
            return true;
    }

    function lozinka_provjera()
    {
        global $lozinka_greska, $lozinka;

        if ($lozinka_greska = prazno_polje($lozinka))
            return false;
        elseif (strlen(trim($lozinka)) < 4 || strlen(trim($lozinka)) > 25) {
            $lozinka_greska = "Lozinka mora biti u rasponu 4-25 znakova!";
        } elseif (!preg_match("/[a-z]/", $lozinka) || !preg_match("/[A-Z]/", $lozinka) || !preg_match("/[0-9]/", $lozinka)) {
            $lozinka_greska = "Morate koristiti barem jedno malo slovo, barem jedno veliko slovo i barem jedan broj!";
        } else
            return true;
    }

    function provjeri_unos()
    {
        global $korime, $lozinka, $povratna, $baza;

        if (korime_provjera() & lozinka_provjera()) {
            $upit = "SELECT * FROM korisnik WHERE korisnicko_ime = '$korime';";

            $rezultat = $baza->selectDB($upit);

            if ($rezultat->num_rows != 0) {
                $polje = $rezultat->fetch_array();
                $id_korisnik = $polje['id_korisnik'];
                //var_dump($polje);

                if ($polje['id_status_korisnika'] == 2) {
                    //dnevnik insert
                    $datum_vrijeme = dohvati_vrijeme();

                    $upit = "INSERT INTO dnevnik_rada (datum_vrijeme, radnja, id_korisnik, id_tip_zapisa) 
                    VALUES ('$datum_vrijeme', 'Korisnik $korime se je pokušao prijaviti s blokiranim računom', $id_korisnik, 2);";

                    $baza->updateDB($upit);

                    $povratna = "Vaš račun je blokiran!";
                    return false;
                }

                if ($polje['broj_neuspjesnih_prijava'] < 3) {
                    if (hash("sha256", $polje['sol'] . "--" . $lozinka) == $polje['lozinka_sha256']) {
                        //ako je lozinka_sha256 dobra
                        $upit = "UPDATE korisnik SET broj_neuspjesnih_prijava = 0 WHERE korisnicko_ime = '$korime';";

                        $baza->updateDB($upit);

                        kolacic_zapamti_korime($korime);
                        kreiraj_sesiju($polje);

                        //dnevnik insert
                        $datum_vrijeme = dohvati_vrijeme();

                        $upit = "INSERT INTO dnevnik_rada (datum_vrijeme, radnja, id_korisnik, id_tip_zapisa) 
                    VALUES ('$datum_vrijeme', 'Korisnik $korime se je uspješno prijavio', $id_korisnik, 2);";

                        $baza->updateDB($upit);

                        return true;
                    } else {
                        //ako nije
                        $broj_neuspjesnih_prijava = $polje['broj_neuspjesnih_prijava'];
                        $broj_neuspjesnih_prijava++;

                        $upit = "UPDATE korisnik SET broj_neuspjesnih_prijava = $broj_neuspjesnih_prijava WHERE korisnicko_ime = '$korime';";

                        $baza->updateDB($upit);

                        //dnevnik insert
                        $datum_vrijeme = dohvati_vrijeme();

                        $upit = "INSERT INTO dnevnik_rada (datum_vrijeme, radnja, id_korisnik, id_tip_zapisa) 
                    VALUES ('$datum_vrijeme', 'Korisnik $korime se je neuspješno prijavio', $id_korisnik, 2);";

                        $baza->updateDB($upit);

                        $povratna = "Kriva lozinka!";
                        return false;
                    }
                } else {
                    //postaviti račun u blokiran
                    $upit = "UPDATE korisnik SET id_status_korisnika = 2 WHERE korisnicko_ime = '$korime';";

                    $baza->updateDB($upit);

                    //dnevnik insert
                    $datum_vrijeme = dohvati_vrijeme();

                    $upit = "INSERT INTO dnevnik_rada (datum_vrijeme, radnja, id_korisnik, id_tip_zapisa) 
                    VALUES ('$datum_vrijeme', 'Korisnik $korime je blokiran', $id_korisnik, 5);";

                    $baza->updateDB($upit);

                    $povratna = "Vaš račun je blokiran!";
                    return false;
                }
            } else {
                $povratna = "Korisnik s tim korisničkim imenom ne postoji!";
                return false;
            }
        } else {
            echo "LOŠA PRIJAVA";
            return false;
        }
    }

    function kolacic_zapamti_korime($korime)
    {
        if (isset($_POST['zapamti-chbox'])) {
            setcookie("zapamti-korime", $korime, time() + 24 * 60 * 60, "/");
        } else {
            if (isset($_COOKIE["zapamti-korime"])) {
                setcookie("zapamti-korime", "", time() - 60 * 60, "/");
            }
        }
    }

    function kreiraj_sesiju($polje)
    {
        $_SESSION['id_korisnik'] = $polje['id_korisnik'];
        $_SESSION['ime'] = $polje['ime'];
        $_SESSION['prezime'] = $polje['prezime'];
        $_SESSION['korisnicko_ime'] = $polje['korisnicko_ime'];
        $_SESSION['uloga_korisnika'] = $polje['id_uloga_korisnika'];
    }

    if (provjeri_unos()) {
        if (isset($_SESSION['id_korisnik'])) {
            header("Location: index.php");
        }
    }
}

$naslov = "Prijava";
$skripte = "
<script src='javascript/provjera_unosa.js'></script>
<script src='javascript/provjera_kolacica.js'></script>";

$smarty->assign('naslov', $naslov);
$smarty->assign('skripte', $skripte);
$smarty->assign('povratna', $povratna);
$smarty->assign('korime_greska', $korime_greska);
$smarty->assign('lozinka_greska', $lozinka_greska);
$smarty->display('zaglavlje.tpl');
$smarty->display('prijava.tpl');
$smarty->display('podnozje.tpl');
