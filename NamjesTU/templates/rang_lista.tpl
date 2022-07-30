<div class="sadrzaj">
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
</div>