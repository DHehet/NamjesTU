<?php
/* Smarty version 4.0.0, created on 2022-06-19 22:25:11
  from 'D:\xampp\htdocs\WebDiP\Namjestaj\templates\registracija.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62af86276d0154_88989682',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a7d5b37897412bdb69747124ce80b5241cef102b' => 
    array (
      0 => 'D:\\xampp\\htdocs\\WebDiP\\Namjestaj\\templates\\registracija.tpl',
      1 => 1655632552,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62af86276d0154_88989682 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="sadrzaj">
    <p id="povratna"><?php echo $_smarty_tpl->tpl_vars['povratna']->value;?>
</p>
    <form id="form-registracija" class="forma" method="post" name="form-registracija" action="registracija.php" novalidate>
        <label for="ime">Ime: </label>
        <input type="text" id="ime" name="ime" size="20" maxlength="25" required="required" autofocus="autofocus"
            placeholder="Vaše ime"><br>
        <p id="ime_greska" class="greska"><?php echo $_smarty_tpl->tpl_vars['ime_greska']->value;?>
</p>

        <label for="prezime">Prezime: </label>
        <input type="text" id="prezime" name="prezime" size="20" maxlength="25" required="required"
            placeholder="Vaše prezime"><br>
        <p id="prezime_greska" class="greska"><?php echo $_smarty_tpl->tpl_vars['prezime_greska']->value;?>
</p>

        <label for="email">Email adresa: </label>
        <input type="email" id="email" name="email" size="20" maxlength="50" placeholder="primjer@primjer.primjer"
            required="required"><br>
        <p id="email_greska" class="greska"><?php echo $_smarty_tpl->tpl_vars['email_greska']->value;?>
</p>

        <label for="mob-broj">Mobilni broj: </label>
        <small id="format-mob">Format broja: 000 000 000(0)</small><br>
        <input type="tel" id="mob-broj" name="mob-broj" size="16" placeholder="Vaš mobilni broj:" required="required">
        <p id="mobilni_greska" class="greska"><?php echo $_smarty_tpl->tpl_vars['mobilni_greska']->value;?>
</p>

        <label for="korime">Korisničko ime: </label>
        <input type="text" id="korime" name="korime" size="20" maxlength="25" required="required"
            placeholder="Upišite željeno korisničko ime"><br>
        <p id="korime_greska" class="greska"><?php echo $_smarty_tpl->tpl_vars['korime_greska']->value;?>
</p>

        <label for="lozinka">Lozinka: </label>
        <input type="password" id="lozinka" name="lozinka" size="20" maxlength="25" required="required"
            placeholder="Lozinka"><br>
        <p id="lozinka_greska" class="greska"><?php echo $_smarty_tpl->tpl_vars['lozinka_greska']->value;?>
</p>

        <label for="pon-lozinka">Ponovi pozinku: </label>
        <input type="password" id="pon-lozinka" name="pon-lozinka" size="20" maxlength="25" required="required"
            placeholder="Ponovite lozinku"><br>
        <p id="pon_lozinka_greska" class="greska"><?php echo $_smarty_tpl->tpl_vars['pon_lozinka_greska']->value;?>
</p>
        <br>

        <label for="g-recaptcha"></label>
        <div class="g-recaptcha" data-sitekey="6LffQXsgAAAAAGj09ipATqWt7UO-GwgwEgYndzUa"></div>
        <p id="recaptcha_greska" class="greska"><?php echo $_smarty_tpl->tpl_vars['recaptcha_greska']->value;?>
</p>

        <input id="form-registriraj" class="btn-forma" type="submit" value="Registriraj se">
    </form>
</div><?php }
}
