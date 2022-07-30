<?php
/* Smarty version 4.0.0, created on 2022-06-19 17:40:57
  from 'D:\xampp\htdocs\WebDiP\Namjestaj\templates\prijava.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62af4389799088_91663385',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b0b9d1847786354da0c1dbd9aa69ea036648f6f7' => 
    array (
      0 => 'D:\\xampp\\htdocs\\WebDiP\\Namjestaj\\templates\\prijava.tpl',
      1 => 1655653229,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62af4389799088_91663385 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="sadrzaj">
    <p id="povratna"><?php echo $_smarty_tpl->tpl_vars['povratna']->value;?>
</p>
    <form id="form-prijava" class="forma" method="post" name="form-prijava" action="prijava.php" novalidate>
        <label for="korime">Korisničko ime: </label>
        <input type="text" id="korime" name="korime" size="20" maxlength="25" required="required"
            placeholder="Upišite korisničko ime" autofocus><br>
        <p id="korime_greska" class="greska"><?php echo $_smarty_tpl->tpl_vars['korime_greska']->value;?>
</p>

        <label for="lozinka">Lozinka: </label>
        <input type="password" id="lozinka" name="lozinka" size="20" maxlength="25" required="required"
            placeholder="Upišite lozinku"><br>
        <p id="lozinka_greska" class="greska"><?php echo $_smarty_tpl->tpl_vars['lozinka_greska']->value;?>
</p>

        <label for="zapamti-chbox" id="zapamti-lbl">Zapamti me:</label>
        <span id="poravnaj"><input type="checkbox" id="zapamti-chbox" name="zapamti-chbox" value="zapamti"></span>

        <input id="form-prijavi" class="btn-forma" type="submit" value="Prijavi se">
    </form>
</div><?php }
}
