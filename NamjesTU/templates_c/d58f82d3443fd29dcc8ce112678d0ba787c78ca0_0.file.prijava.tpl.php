<?php
/* Smarty version 4.0.0, created on 2022-07-26 16:37:49
  from 'D:\xampp\htdocs\WebDiP\NamjesTU\templates\prijava.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62dffc3d4b5966_96950263',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd58f82d3443fd29dcc8ce112678d0ba787c78ca0' => 
    array (
      0 => 'D:\\xampp\\htdocs\\WebDiP\\NamjesTU\\templates\\prijava.tpl',
      1 => 1655653229,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62dffc3d4b5966_96950263 (Smarty_Internal_Template $_smarty_tpl) {
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
