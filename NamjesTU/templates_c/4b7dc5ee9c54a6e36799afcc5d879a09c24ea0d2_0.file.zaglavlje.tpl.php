<?php
/* Smarty version 4.0.0, created on 2022-07-26 16:32:37
  from 'D:\xampp\htdocs\WebDiP\NamjesTU\templates\zaglavlje.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62dffb05110675_95458107',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4b7dc5ee9c54a6e36799afcc5d879a09c24ea0d2' => 
    array (
      0 => 'D:\\xampp\\htdocs\\WebDiP\\NamjesTU\\templates\\zaglavlje.tpl',
      1 => 1655510842,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62dffb05110675_95458107 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="hr">

<head>
    <title><?php echo $_smarty_tpl->tpl_vars['naslov']->value;?>
</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Dominik Hehet">
    <meta name="description" content="15.6.2022.">
    <link rel="icon" type="image/x-icon" href="materijali/favico.ico">
    <link href="css/dhehet.css" rel="stylesheet" type="text/css">
</head>

<body>
    <div id="page-container">
        <?php echo $_smarty_tpl->tpl_vars['skocni_prozor']->value;?>

        <header class="header">
            <a href="index.php" class="logo">
                <img src="materijali/Logo.png" width="100" height="75" alt="Logo web stranice">
            </a>
            <input class="menu-btn" type="checkbox" id="menu-btn" />
            <label class="menu-icon" for="menu-btn">
                <span class="nav-icon"></span></label>

            <div class="text-container">
                <p id="prijavljeni-korisnik"><?php echo $_smarty_tpl->tpl_vars['pozdravna_poruka']->value;?>
</p>
                <h1 id="naslov"><?php echo $_smarty_tpl->tpl_vars['naslov']->value;?>
</h1>
            </div>

            <ul class="menu">
                <?php echo $_smarty_tpl->tpl_vars['meni']->value;?>

            </ul>
        </header><?php }
}
