<?php
/* Smarty version 4.0.0, created on 2022-06-20 08:45:08
  from 'D:\xampp\htdocs\WebDiP\Namjestaj\templates\narudzba.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62b017744753e9_90711899',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8d72fa1c1796f8087b8d4fc7f5ba9264d729b4db' => 
    array (
      0 => 'D:\\xampp\\htdocs\\WebDiP\\Namjestaj\\templates\\narudzba.tpl',
      1 => 1655707507,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62b017744753e9_90711899 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="sadrzaj">
    <div class="mobilna-tablica ">
        <div class="search_sort">
            <form class="trazilica" name="trazilica">
                <input type="text" id="trazilica" name="trazilica" placeholder="Pretraži..." autofocus>
            </form>
            <div class="sort">
                <label for="sortiraj_stupac">Sortiraj:</label>
                <select class="sortiraj_stupac" id="sortiraj_stupac">
                    <option value="2">Datum i vrijeme kreiranja</option>
                    <option value="3">Cijena</option>
                    <option value="4">Datum i vrijeme isporuke</option>
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
