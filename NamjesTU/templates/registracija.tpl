<div class="sadrzaj">
    <p id="povratna">{$povratna}</p>
    <form id="form-registracija" class="forma" method="post" name="form-registracija" action="registracija.php" novalidate>
        <label for="ime">Ime: </label>
        <input type="text" id="ime" name="ime" size="20" maxlength="25" required="required" autofocus="autofocus"
            placeholder="Vaše ime"><br>
        <p id="ime_greska" class="greska">{$ime_greska}</p>

        <label for="prezime">Prezime: </label>
        <input type="text" id="prezime" name="prezime" size="20" maxlength="25" required="required"
            placeholder="Vaše prezime"><br>
        <p id="prezime_greska" class="greska">{$prezime_greska}</p>

        <label for="email">Email adresa: </label>
        <input type="email" id="email" name="email" size="20" maxlength="50" placeholder="primjer@primjer.primjer"
            required="required"><br>
        <p id="email_greska" class="greska">{$email_greska}</p>

        <label for="mob-broj">Mobilni broj: </label>
        <small id="format-mob">Format broja: 000 000 000(0)</small><br>
        <input type="tel" id="mob-broj" name="mob-broj" size="16" placeholder="Vaš mobilni broj:" required="required">
        <p id="mobilni_greska" class="greska">{$mobilni_greska}</p>

        <label for="korime">Korisničko ime: </label>
        <input type="text" id="korime" name="korime" size="20" maxlength="25" required="required"
            placeholder="Upišite željeno korisničko ime"><br>
        <p id="korime_greska" class="greska">{$korime_greska}</p>

        <label for="lozinka">Lozinka: </label>
        <input type="password" id="lozinka" name="lozinka" size="20" maxlength="25" required="required"
            placeholder="Lozinka"><br>
        <p id="lozinka_greska" class="greska">{$lozinka_greska}</p>

        <label for="pon-lozinka">Ponovi pozinku: </label>
        <input type="password" id="pon-lozinka" name="pon-lozinka" size="20" maxlength="25" required="required"
            placeholder="Ponovite lozinku"><br>
        <p id="pon_lozinka_greska" class="greska">{$pon_lozinka_greska}</p>
        <br>

        <label for="g-recaptcha"></label>
        <div class="g-recaptcha" data-sitekey="6LffQXsgAAAAAGj09ipATqWt7UO-GwgwEgYndzUa"></div>
        <p id="recaptcha_greska" class="greska">{$recaptcha_greska}</p>

        <input id="form-registriraj" class="btn-forma" type="submit" value="Registriraj se">
    </form>
</div>