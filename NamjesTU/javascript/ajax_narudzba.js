$(document).ready(function () {
    vrijednost = $("#trazilica").val();
    sortiraj_stupac = $('#sortiraj_stupac').val();
    vrsta_sortiranja = $('#vrsta_sortiranja').val();

    var d = new Date(),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();
    hours = d.getHours();
    minutes = d.getMinutes();

    if (month.length < 2)
        month = '0' + month;
    if (day.length < 2)
        day = '0' + day;

    trenutni_datum = [year, month, day].join('-');
    trenutni_datum = trenutni_datum + " " + [hours, minutes].join('-');

    console.log(trenutni_datum);

    $.ajax({
        url: './dohvati_narudzbe.php',
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
    var tablica = $('<table id="narudzbe">');

    tablica.append("<thead><tr><th>Datum i vrijeme kreiranja</th><th>Ukupna cijena</th><th>Datum i vrijeme isporuke</th><th>Status narudžbe</th><th>Radnja</th></tr></thead>");

    var tbody = $("<tbody>");

    $($data).find('narudzba').each(function () {
        var red = "<tr>";

        red += "<td>" + $(this).attr("datum_vrijeme_kreiranja") + "</td>";
        red += "<td>" + $(this).attr("ukupna_cijena") + "</td>";
        red += "<td>" + $(this).attr("datum_vrijeme_isporuke") + "</td>";
        red += "<td>" + $(this).attr("status_narudzbe") + "</td>";

        if ($(this).attr("datum_vrijeme_isporuke") < trenutni_datum
            && $(this).attr("status_narudzbe") == 'Dostava u tijeku') {
            red += "<td><a href='#' class='preuzmi' id='" + $(this).attr("broj_narudzbe") + "'>Preuzmi</a></td>";
        }

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
        url: './dohvati_narudzbe.php',
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
            url: './dohvati_narudzbe.php',
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

$("#ajax_tablica").on('click', '.preuzmi', function () {
    id_narudzba = $(this).attr('id');
    console.log(id_narudzba);
    vrijednost = $("#trazilica").val();
    sortiraj_stupac = $('#sortiraj_stupac').val();
    vrsta_sortiranja = $('#vrsta_sortiranja').val();

    $.ajax({
        url: './dohvati_narudzbe.php',
        dataType: 'xml',
        type: 'GET',
        data: { "preuzmi": id_narudzba },
        success: function () {
            $.ajax({
                url: './dohvati_narudzbe.php',
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
        }
    });
});