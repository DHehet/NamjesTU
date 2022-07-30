<?php
/* Smarty version 4.0.0, created on 2022-06-20 05:12:29
  from 'D:\xampp\htdocs\WebDiP\Namjestaj\templates\kategorije_namjestaja.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62afe59dcfb457_21125119',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '13cd51bb6fbbc5668ef9cb987bae916a5aab0a4d' => 
    array (
      0 => 'D:\\xampp\\htdocs\\WebDiP\\Namjestaj\\templates\\kategorije_namjestaja.tpl',
      1 => 1655694748,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62afe59dcfb457_21125119 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="sadrzaj">
    <div class="form-dodaj-kat">
        <form class="form-kategorije" id="form-kategorije" name="form-kategorije">
            <label for="naziv">Naziv:</label>
            <input type="text" id="naziv" name="naziv"><br>
            <label for="moderator">Moderator:</label>
            <select id="moderator" name="moderator">
            </select><br>
            <button type="button" id="unesi_zapis">Unesi</button>
            <button type="button" id="azuriraj_zapis">Ažuriraj</button>
        </form>
    </div>
    <div class="mobilna-tablica ">
        <div class="search_sort">
            <form class="trazilica" name="trazilica">
                <input type="text" id="trazilica" name="trazilica" placeholder="Pretraži..." autofocus>
            </form>
            <button type="button" id="gumb_dodaj">Dodaj</button>
            <button type="button" id="gumb_odustani">Odustani</button>
            <div class="sort">
                <label for="sortiraj_stupac">Sortiraj:</label>
                <select class="sortiraj_stupac" id="sortiraj_stupac">
                    <option value="1">Naziv</option>
                    <option value="2">Moderator</option>
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
