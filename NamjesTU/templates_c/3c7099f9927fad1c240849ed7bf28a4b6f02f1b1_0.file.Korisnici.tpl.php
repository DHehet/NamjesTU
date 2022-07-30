<?php
/* Smarty version 4.0.0, created on 2022-07-26 16:41:43
  from 'D:\xampp\htdocs\WebDiP\NamjesTU\templates\Korisnici.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62dffd279ebd66_30057748',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3c7099f9927fad1c240849ed7bf28a4b6f02f1b1' => 
    array (
      0 => 'D:\\xampp\\htdocs\\WebDiP\\NamjesTU\\templates\\Korisnici.tpl',
      1 => 1655665227,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62dffd279ebd66_30057748 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="sadrzaj">
    <div class="mobilna-tablica ">
        <div class="search_sort">
            <form class="trazilica" name="trazilica">
                <input type="text" id="trazilica" name="trazilica" placeholder="Pretraži..." autofocus>
            </form>
            <div class="sort">
                <label for="sortiraj_stupac">Sortiraj:</label>
                <select class="sortiraj_stupac" id="sortiraj_stupac">
                    <option value="2">Ime</option>
                    <option value="3">Prezime</option>
                    <option value="4">Korisničko ime</option>
                    <option value="5">Mobilni broj</option>
                    <option value="6">Email</option>
                    <option value="9">Status</option>
                </select>
                <select class="sortiraj_stupac" id="vrsta_sortiranja">
                    <option value="asc" selected="selected">Uzlazno</option>
                    <option value="desc">Silazno</option>
                </select>
            </div>
        </div>
        <div id="ajax_tablica"></div>
    </div>
</div><?php }
}
