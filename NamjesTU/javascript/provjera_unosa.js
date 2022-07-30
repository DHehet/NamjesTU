$(document).ready(function () {
    $forma = $("form");
    $ime = $("#ime");
    $prezime = $("#prezime");
    $email = $("#email");
    $mob_broj = $("#mob-broj");
    $korime = $("#korime");
    $lozinka = $("#lozinka");
    $pon_lozinka = $("#pon-lozinka");

    $ime_forme = $forma.attr('id');

    $forma.submit(function (event) {
        if ($ime_forme == "form-registracija") {
            if (prazno_polje($ime) & prazno_polje($prezime) & email_provjera($email)
                & mobitel_provjera($mob_broj) & korime_provjera($korime) & lozinka_provjera($lozinka) & iste_lozinke_provjera($lozinka, $pon_lozinka))
                return true;
            else
                event.preventDefault();
        }

        else if ($ime_forme == "form-prijava") {
            if (korime_provjera($korime) & lozinka_provjera($lozinka))
                return true;
            else
                event.preventDefault();
        }

        else
            console.log("Greška kod submita forme!");
    });

    $ime.focusout(function () { prazno_polje($(this)); });
    $prezime.focusout(function () { prazno_polje($(this)); });
    $email.focusout(function () { email_provjera($(this)); });
    $mob_broj.focusout(function () { mobitel_provjera($(this)); });
    $korime.focusout(function () { korime_provjera($(this)); });
    $lozinka.focusout(function () { lozinka_provjera($(this)); });
    $pon_lozinka.focusout(function () { iste_lozinke_provjera($lozinka, $(this)); });

});

function prazno_polje($polje) {
    if ($polje.val() === "") {
        var poruka = 'Ovo polje je obavezno!';
        prikazi_greske($polje, poruka);
    } else {
        obrisi_greske($polje);
        return true;
    }
}

function email_provjera($polje) {
    var poruka;
    var vrijednost = $polje.val();
    var regExp = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    if (!prazno_polje($polje)) return false;
    else if (!regExp.test(vrijednost)) {
        poruka = "Email nije ispravno unesen!";
    } else return true;

    prikazi_greske($polje, poruka);
}

function mobitel_provjera($polje) {
    var poruka;
    var vrijednost = $polje.val();
    var regExp = /[0-9]{3}\s[0-9]{3}\s[0-9]{3,4}$/;

    if (vrijednost != "" && !regExp.test(vrijednost)) {
        poruka = "Broj mobitela nije ispravno unesen!";
        prikazi_greske($polje, poruka);
        return false;
    } else {
        obrisi_greske($polje);
        return true;
    }
}

function korime_provjera($polje) {
    var poruka;
    var vrijednost = $polje.val();
    var regExp = /^[a-zA-Z0-9ćčđšžĆČĐŠŽ_-]{5,}$/;

    if ($ime_forme == "form-registracija") {
        $.ajax({
            type: "GET",
            url: "dohvati_korime.php",
            dataType: "json",
            data: {
                "korisnicko_ime": vrijednost
            },
            success: function (data) {
                if (data == '1') {
                    poruka = "Korisničko ime je zauzeto!";
                    prikazi_greske($polje, poruka);
                    return false;
                }

                else {
                    return true;
                }
            },
            error: function (data) {
                console.log("Pogreška");
                console.log(data);
            }
        });
    }

    if (!prazno_polje($polje)) return false;
    else if (!regExp.test(vrijednost)) {
        poruka = "Korisničko ime mora biti 5 ili više znakova i ne smijete koristiti simbole različite od '_' i '-'";
    } else return true;

    prikazi_greske($polje, poruka);
}

function lozinka_provjera($polje) {
    var poruka;
    var vrijednost = $polje.val();
    var regExp = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{4,}$/;

    if (!prazno_polje($polje)) return false;
    else if (!regExp.test(vrijednost)) {
        poruka = "Lozinka mora imati 4 ili više znakova te barem jedno malo slovo, barem jedno veliko slovo i barem jedan broj!";
    } else return true;

    prikazi_greske($polje, poruka);
}

function iste_lozinke_provjera($polje, $polje2) {
    var poruka;
    var vrijednost_loz = $polje.val();
    var vrijednost_pon_loz = $polje2.val();

    if (!prazno_polje($polje2)) return false;
    else if (vrijednost_loz !== vrijednost_pon_loz) {
        poruka = "Lozinke se ne podudaraju!";
    } else return true;

    prikazi_greske($polje2, poruka);
}

function prikazi_greske($polje, $poruka) {
    $($polje).nextUntil("label").remove();
    $($polje).after("<p class='greska'></p>");
    $($polje).next().append($poruka);
    $polje.removeClass("prolaz").addClass("pad");
}

function obrisi_greske($polje) {
    $($polje).nextUntil("label").remove();
    $($polje).after("</br>");
    $polje.removeClass("pad").addClass("prolaz");
}