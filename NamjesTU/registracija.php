<?php

require_once 'zaglavlje.php';

if (isset($_SESSION["id_korisnik"])) {
    header("Location: index.php");
    exit();
}

$ime_greska = $prezime_greska = $email_greska = $mobilni_greska = $korime_greska = $lozinka_greska = $pon_lozinka_greska = $recaptcha_greska = $povratna = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $ime = $_POST['ime'];
    $prezime = $_POST['prezime'];
    $email = $_POST['email'];
    $mob_broj = $_POST['mob-broj'];
    $korime = $_POST['korime'];
    $lozinka = $_POST['lozinka'];
    $pon_lozinka = $_POST['pon-lozinka'];
    $recaptcha = $_POST['g-recaptcha-response'];

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

    function ime_provjera()
    {
        global $ime_greska, $ime;

        if ($ime_greska = prazno_polje($ime))
            return false;
        elseif (strlen(trim($ime)) < 2 || strlen(trim($ime)) > 25) {
            $ime_greska = "Ime mora biti u rasponu 2-25 znakova!";
        } elseif (!preg_match("/^[a-zA-Z-' ćčđšžĆČĐŠŽ]*$/", $ime)) {
            $ime_greska = "Ne smijete koristiti brojeve niti simbole!";
        } else
            return true;
    }

    function prezime_provjera()
    {
        global $prezime_greska, $prezime;

        if ($prezime_greska = prazno_polje($prezime))
            return false;
        elseif (strlen(trim($prezime)) < 2 || strlen(trim($prezime)) > 25) {
            $prezime_greska = "Prezime mora biti u rasponu 2-25 znakova!";
        } elseif (!preg_match("/^[a-zA-Z-' ćčđšžĆČĐŠŽ]*$/", $prezime)) {
            $prezime_greska = "Ne smijete koristiti brojeve niti simbole!";
        } else
            return true;
    }

    function email_provjera()
    {
        global $email_greska, $email;

        if ($email_greska = prazno_polje($email))
            return false;
        elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $email_greska = "Email nije ispravno unesen!";
        } else
            return true;
    }

    function mobitel_provjera()
    {
        global $mobilni_greska, $mob_broj;

        if ($mob_broj != "" && !preg_match('/[0-9]{3}\s[0-9]{3}\s[0-9]{3,4}$/', $mob_broj)) {
            $mobilni_greska = "Broj mobitela nije ispravno unesen!";
            return false;
        } else
            return true;
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

    function iste_lozinke_provjera()
    {
        global $pon_lozinka_greska, $pon_lozinka, $lozinka;

        if ($pon_lozinka_greska = prazno_polje($pon_lozinka))
            return false;
        elseif ($pon_lozinka != $lozinka) {
            $pon_lozinka_greska = "Lozinke se ne podudaraju!";
        } else
            return true;
    }

    function recaptcha_provjera()
    {
        global $recaptcha_greska, $recaptcha;

        if (!$recaptcha) {
            $recaptcha_greska = "Niste označili reCAPTCHA potvrdu!";
            return false;
        }

        $tajni_kljuc = $_ENV["reCAPKey"];

        $ip = $_SERVER['REMOTE_ADDR'];
        $url = 'https://www.google.com/recaptcha/api/siteverify?secret=' . urlencode($tajni_kljuc) . '&response=' . urlencode($recaptcha);
        $odgovor = file_get_contents($url);
        $kljucevi_odgovora = json_decode($odgovor, true);

        if ($kljucevi_odgovora['success']) {
            return true;
        } else {
            $recaptcha_greska = "reCAPTCHA provjera nije uspjela!";
            return false;
        }
    }

    function provjeri_unos()
    {
        global $ime, $prezime, $korime, $lozinka, $email, $mob_broj, $povratna, $baza;

        if (ime_provjera() & prezime_provjera() & email_provjera() &        mobitel_provjera() & korime_provjera() & lozinka_provjera() & iste_lozinke_provjera() & recaptcha_provjera()) {
            $sol = sha1(time());
            $lozinka_sha256 = hash("sha256", $sol . "--" . $lozinka);

            $upit = "INSERT INTO korisnik 
            (ime, prezime, korisnicko_ime, lozinka, lozinka_sha256, sol, email, mobilni_broj, broj_neuspjesnih_prijava, uvjeti_koristenja, id_uloga_korisnika, id_status_korisnika) 
            VALUES ('$ime', '$prezime', '$korime', '$lozinka', '$lozinka_sha256', '$sol', '$email', '$mob_broj', 0, 1, 1, 1);";

            if ($baza->updateDB($upit)) {
                $upit = "SELECT id_korisnik FROM korisnik WHERE korisnicko_ime = '$korime';";
                $rezultat = $baza->selectDB($upit);

                $id_korisnik = $rezultat->fetch_array()[0];
                $datum_vrijeme = dohvati_vrijeme();

                $upit = "INSERT INTO dnevnik_rada
                (datum_vrijeme, radnja, id_korisnik, id_tip_zapisa)
                VALUES ('$datum_vrijeme', \"Korisnik {$korime} se je registrirao\", $id_korisnik, 1);";

                $baza->updateDB($upit);
            }

            $povratna = "Registracija je uspjela!";
        } else
            $povratna = "Registracija nije uspjela!";
    }

    provjeri_unos();
}

$naslov = 'Registracija';
$skripte = "
<script src='https://www.google.com/recaptcha/api.js' async defer></script>
<script src='javascript/provjera_unosa.js'></script>";

$smarty->assign('naslov', $naslov);
$smarty->assign('skripte', $skripte);
$smarty->assign('povratna', $povratna);
$smarty->assign('ime_greska', $ime_greska);
$smarty->assign('prezime_greska', $prezime_greska);
$smarty->assign('email_greska', $email_greska);
$smarty->assign('mobilni_greska', $mobilni_greska);
$smarty->assign('korime_greska', $korime_greska);
$smarty->assign('lozinka_greska', $lozinka_greska);
$smarty->assign('pon_lozinka_greska', $pon_lozinka_greska);
$smarty->assign('recaptcha_greska', $recaptcha_greska);
$smarty->display('zaglavlje.tpl');
$smarty->display('registracija.tpl');
$smarty->display('podnozje.tpl');