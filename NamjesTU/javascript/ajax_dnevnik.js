$(document).ready(function () {
    vrijednost = $("#trazilica").val();
    sortiraj_stupac = $('#sortiraj_stupac').val();
    vrsta_sortiranja = $('#vrsta_sortiranja').val();

    $.ajax({
        url: './dohvati_dnevnik.php',
        dataType: 'xml',
        type: 'GET',
        data: {
            "pretrazi": vrijednost,
            "sortiraj_stupac": sortiraj_stupac,
            "vrsta_sortiranja": vrsta_sortiranja
        },
        success: function (data) {
            prikazi_tablicu(data);
        }
    });
});

function prikazi_tablicu($data) {
    var tablica = $('<table id="dnevnik">');

    tablica.append('<thead><tr><th>Datum i vrijeme</th><th>Ime</th><th>Prezime</th><th>Radnja</th><th>Tip</th></tr></thead>');

    var tbody = $("<tbody>");

    $($data).find('zapis_dnevnik').each(function () {
        var red = "<tr>";

        red += "<td>" + $(this).attr("datum_vrijeme") + "</td>";
        red += "<td>" + $(this).attr("ime") + "</td>";
        red += "<td>" + $(this).attr("prezime") + "</td>";
        red += "<td>" + $(this).attr("radnja") + "</td>";
        red += "<td>" + $(this).attr("tip_zapisa") + "</td>";
        red += "</tr>";

        tbody.append(red);
    });

    tbody.append("</tbody></table>");
    tablica.append(tbody);

    $("#ajax_tablica").html(tablica);
}

$("#trazilica").on('input', function () {
    vrijednost = $("#trazilica").val();
    sortiraj_stupac = $('#sortiraj_stupac').val();
    vrsta_sortiranja = $('#vrsta_sortiranja').val();

    $.ajax({
        url: './dohvati_dnevnik.php',
        dataType: "xml",
        type: "GET",
        data: {
            "pretrazi": vrijednost,
            "sortiraj_stupac": sortiraj_stupac,
            "vrsta_sortiranja": vrsta_sortiranja
        },
        success: prikazi_tablicu,
    });
});


$(".sortiraj_stupac").each(function () {
    $(this).on('change', function () {
        vrijednost = $("#trazilica").val();
        sortiraj_stupac = $('#sortiraj_stupac').val();
        vrsta_sortiranja = $('#vrsta_sortiranja').val();

        $.ajax({
            url: './dohvati_dnevnik.php',
            dataType: "xml",
            type: "GET",
            data: {
                "pretrazi": vrijednost,
                "sortiraj_stupac": sortiraj_stupac,
                "vrsta_sortiranja": vrsta_sortiranja
            },
            success: prikazi_tablicu,
        });
    });
});