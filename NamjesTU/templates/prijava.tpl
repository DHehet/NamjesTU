<div class="sadrzaj">
    <p id="povratna">{$povratna}</p>
    <form id="form-prijava" class="forma" method="post" name="form-prijava" action="prijava.php" novalidate>
        <label for="korime">Korisničko ime: </label>
        <input type="text" id="korime" name="korime" size="20" maxlength="25" required="required"
            placeholder="Upišite korisničko ime" autofocus><br>
        <p id="korime_greska" class="greska">{$korime_greska}</p>

        <label for="lozinka">Lozinka: </label>
        <input type="password" id="lozinka" name="lozinka" size="20" maxlength="25" required="required"
            placeholder="Upišite lozinku"><br>
        <p id="lozinka_greska" class="greska">{$lozinka_greska}</p>

        <label for="zapamti-chbox" id="zapamti-lbl">Zapamti me:</label>
        <span id="poravnaj"><input type="checkbox" id="zapamti-chbox" name="zapamti-chbox" value="zapamti"></span>

        <input id="form-prijavi" class="btn-forma" type="submit" value="Prijavi se">
    </form>
</div>