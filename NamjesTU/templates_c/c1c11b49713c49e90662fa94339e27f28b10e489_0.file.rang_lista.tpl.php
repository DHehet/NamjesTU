<?php
/* Smarty version 4.0.0, created on 2022-07-26 16:37:43
  from 'D:\xampp\htdocs\WebDiP\NamjesTU\templates\rang_lista.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62dffc37a2c1a0_72426513',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c1c11b49713c49e90662fa94339e27f28b10e489' => 
    array (
      0 => 'D:\\xampp\\htdocs\\WebDiP\\NamjesTU\\templates\\rang_lista.tpl',
      1 => 1655653377,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62dffc37a2c1a0_72426513 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="sadrzaj">
    <div class="mobilna-tablica ">
        <div class="search_sort">
            <form class="trazilica" name="trazilica">
                <input type="text" id="trazilica" name="trazilica" placeholder="Pretraži..." autofocus>
            </form>
            <div class="sort">
                <label for="sortiraj_stupac">Sortiraj:</label>
                <select class="sortiraj_stupac" id="sortiraj_stupac">
                    <option value="2">Naziv</option>
                    <option value="3">Cijena</option>
                    <option value="4">Širina</option>
                    <option value="5">Dužina</option>
                    <option value="6">Visina</option>
                    <option value="7">Boja</option>
                    <option value="8">Stanje zaliha</option>
                    <option value="9">Kategorija</option>
                    <option value="10">Status</option>
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
