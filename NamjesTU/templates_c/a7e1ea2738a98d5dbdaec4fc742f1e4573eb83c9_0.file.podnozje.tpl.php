<?php
/* Smarty version 4.0.0, created on 2022-07-26 16:32:37
  from 'D:\xampp\htdocs\WebDiP\NamjesTU\templates\podnozje.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62dffb051720a4_25747077',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a7e1ea2738a98d5dbdaec4fc742f1e4573eb83c9' => 
    array (
      0 => 'D:\\xampp\\htdocs\\WebDiP\\NamjesTU\\templates\\podnozje.tpl',
      1 => 1655566243,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62dffb051720a4_25747077 (Smarty_Internal_Template $_smarty_tpl) {
?>        <footer>
            <a href="https://validator.w3.org/check?uri=http://barka.foi.hr/WebDiP/2021_projekti/WebDiP2021x032/index.php" target="blank">
                <img src="materijali/HTML5_logo.png" width="50" height="50" alt="HTML5 logo">
            </a>

            <a href="https://jigsaw.w3.org/css-validator/validator?uri=http://barka.foi.hr/WebDiP/2021_projekti/WebDiP2021x032/index.php" target="blank">
                <img src="materijali/CSS3_logo.png" width="50" height="50" alt="CSS3 logo">
            </a>

            <address id="address">Kontakt: <a href="mailto:dhehet@foi.hr">Dominik Hehet</a></address>

            <p id="copyright">&copy; 2022 D. Hehet</p>
        </footer>
    </div>

    <?php echo '<script'; ?>
 src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"><?php echo '</script'; ?>
>
    <?php if ($_smarty_tpl->tpl_vars['uvjeti_koristenja']->value == "FALSE") {?>
        <?php echo '<script'; ?>
 src="javascript/uvjeti_koristenja.js"><?php echo '</script'; ?>
>
    <?php }?>
    <?php echo $_smarty_tpl->tpl_vars['skripte']->value;?>


</body>

</html><?php }
}
