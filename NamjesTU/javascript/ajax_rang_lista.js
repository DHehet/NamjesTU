$(document).ready(function () {
    vrijednost = $("#trazilica").val();
    sortiraj_stupac = $('#sortiraj_stupac').val();
    vrsta_sortiranja = $('#vrsta_sortiranja').val();

	$.ajax({
		url: './dohvati_rang_lista.php',
        dataType: 'xml',
        type: 'GET',
		data: {
            "pretrazi": vrijednost,
            "sortiraj_stupac": sortiraj_stupac,
            "vrsta_sortiranja": vrsta_sortiranja
        },
		success: function(data) {
            prikazi_tablicu(data);
        }
	});
});

function prikazi_tablicu($data) {
    var tablica = $('<table id="namjestaji">');

    tablica.append('<thead><tr><th>Naziv</th><th>Cijena</th><th>Širina</th><th>Dužina</th><th>Visina</th><th>Boja</th><th>Stanje zaliha</th><th>Kategorija</th><th>Status</th></tr></thead>');

    var tbody = $("<tbody>");

    $($data).find('namjestaj').each(function () {
        var red = "<tr>";

        red += "<td>" + $(this).attr("naziv") + "</td>";
        red += "<td>" + $(this).attr("cijena") + "</td>";
        red += "<td>" + $(this).attr("sirina") + "</td>";
        red += "<td>" + $(this).attr("duzina") + "</td>";
        red += "<td>" + $(this).attr("visina") + "</td>";
        red += "<td>" + $(this).attr("boja") + "</td>";
        red += "<td>" + $(this).attr("stanje_zaliha") + "</td>";
        red += "<td>" + $(this).attr("kategorija") + "</td>";
        red += "<td>" + $(this).attr("status") + "</td>";
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
        url: './dohvati_rang_lista.php',
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
            url: './dohvati_rang_lista.php',
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
