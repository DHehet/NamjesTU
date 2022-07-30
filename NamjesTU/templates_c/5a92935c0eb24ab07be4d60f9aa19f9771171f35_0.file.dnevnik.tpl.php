<?php
/* Smarty version 4.0.0, created on 2022-07-26 17:04:40
  from 'D:\xampp\htdocs\WebDiP\NamjesTU\templates\dnevnik.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62e002885f2b40_73420727',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5a92935c0eb24ab07be4d60f9aa19f9771171f35' => 
    array (
      0 => 'D:\\xampp\\htdocs\\WebDiP\\NamjesTU\\templates\\dnevnik.tpl',
      1 => 1655671176,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62e002885f2b40_73420727 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="sadrzaj">
    <div class="mobilna-tablica ">
        <div class="search_sort">
            <form class="trazilica" name="trazilica">
                <input type="text" id="trazilica" name="trazilica" placeholder="Pretraži..." autofocus>
            </form>
            <div class="sort">
                <label for="sortiraj_stupac">Sortiraj:</label>
                <select class="sortiraj_stupac" id="sortiraj_stupac">
                    <option value="1">Datum i vrijeme</option>
                    <option value="4">Ime</option>
                    <option value="5">Prezime</option>
                    <option value="6">Tip zapisa</option>
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
