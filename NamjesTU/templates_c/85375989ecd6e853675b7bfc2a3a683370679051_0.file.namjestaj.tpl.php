<?php
/* Smarty version 4.0.0, created on 2022-06-20 06:39:36
  from 'D:\xampp\htdocs\WebDiP\Namjestaj\templates\namjestaj.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.0.0',
  'unifunc' => 'content_62affa08cabd39_90108157',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '85375989ecd6e853675b7bfc2a3a683370679051' => 
    array (
      0 => 'D:\\xampp\\htdocs\\WebDiP\\Namjestaj\\templates\\namjestaj.tpl',
      1 => 1655699922,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62affa08cabd39_90108157 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="sadrzaj">
    <div class="form-dodaj-namj">
        <form class="form-kategorije" id="form-kategorije" name="form-kategorije">
            <label for="naziv">Naziv:</label>
            <input type="text" id="naziv" name="naziv"><br>

            <label for="cijena">Cijena:</label>
            <input type="number" id="cijena" name="cijena"><br />

            <label for="sirina">Širina:</label>
            <input type="number" id="sirina" name="sirina"><br />

            <label for="duzina">Dužina:</label>
            <input type="number" id="duzina" name="duzina"><br />

            <label for="visina">Visina:</label>
            <input type="number" id="visina" name="visina"><br />

            <label for="boja">Boja:</label>
            <input type="text" id="boja" name="boja"><br>

            <label for="stanje_zaliha">Zalihe:</label>
            <input type="number" id="stanje_zaliha" name="stanje_zaliha"><br />

            <label for="kategorija">Kategorija:</label>
            <select id="kategorija" name="kategorija">
                <option value='0' selected></option>
            </select><br>

            <label for="status">Status:</label>
            <select id="status" name="status">
                <option value='0' selected></option>
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
                    <option value="2">Cijena</option>
                    <option value="3">Širina</option>
                    <option value="4">Dužina</option>
                    <option value="5">Visina</option>
                    <option value="6">Boja</option>
                    <option value="7">Stanje zaliha</option>
                    <option value="8">Kategorija</option>
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
