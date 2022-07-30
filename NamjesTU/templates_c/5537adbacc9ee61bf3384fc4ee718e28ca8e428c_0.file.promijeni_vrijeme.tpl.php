<?php
/* Smarty version 4.0.0, created on 2022-07-26 17:07:20
  from 'D:\xampp\htdocs\WebDiP\NamjesTU\templates\promijeni_vrijeme.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62e003289df120_19856054',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5537adbacc9ee61bf3384fc4ee718e28ca8e428c' => 
    array (
      0 => 'D:\\xampp\\htdocs\\WebDiP\\NamjesTU\\templates\\promijeni_vrijeme.tpl',
      1 => 1655583586,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62e003289df120_19856054 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="sadrzaj">
    <p id="povratna"><?php echo $_smarty_tpl->tpl_vars['povratna']->value;?>
</p>
    <p id="trenutno_vrijeme"><?php echo $_smarty_tpl->tpl_vars['trenutacno_vrijeme']->value;?>
</p>
    <form id="form-vrijeme" class="forma" method="post" name="form-vrijeme" action="promijeni_vrijeme.php" novalidate>
        <h3>
            Unesite pomak u satima na
            <a href="http://barka.foi.hr/WebDiP/pomak_vremena/vrijeme.html" target="blank">ovoj
            </a> web stranici.
        </h3>
        
            <input id="btn-pomak" name="btn-pomak" class="btn-forma" type="submit" value="Promijeni vrijeme">
        </form>
</div><?php }
}
