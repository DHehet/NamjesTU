$(document).ready(function () {
    $.ajax({
        url: './dohvati_status.php',
        dataType: "xml",
        type: "GET",
        success: prikazi_status
    });
});

function prikazi_status($data) {
    var popis = "<option value='0'>Odaberi status</option>";
    $($data).find('status').each(function () {
        popis += "<option value='" + $(this).attr("id_status_namjestaja") + "' id='status" + $(this).attr("id_status_namjestaja") + "'>" + $(this).attr("naziv") + "</option>";
    });

    $("#status").html(popis);
}