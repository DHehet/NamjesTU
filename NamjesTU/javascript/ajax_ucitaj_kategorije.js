$(document).ready(function () {
    $.ajax({
        url: './dohvati_kategorije.php',
        dataType: "xml",
        type: "GET",
        success: prikazi_kategorije
    });
});

function prikazi_kategorije($data) {
    var popis = "<option value='0'>Odaberi kategoriju</option>";
    $($data).find('kategorija').each(function () {
        popis += "<option value='" + $(this).attr("id_kategorija_namjestaja") + "' id='kategorija" + $(this).attr("id_kategorija_namjestaja") + "'>" + $(this).attr("naziv") + "</option>";
    });

    $("#kategorija").html(popis);
}