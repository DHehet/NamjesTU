$(document).ready(function () {
    $("#gumb_dodaj").click(function () {
        $(".form-dodaj-namj").show();
        $("#gumb_dodaj").hide();
        $("#gumb_odustani").show();
        $("#unesi_zapis").show();
        $("#azuriraj_zapis").hide();
    });
    $("#gumb_odustani").click(function () {
        $('#naziv').val('');
        $('#cijena').val('');
        $('#sirina').val('');
        $('#duzina').val('');
        $('#visina').val('');
        $('#boja').val('');
        $('#stanje_zaliha').val('');
        $(".form-dodaj-namj").hide();
        $("#gumb_odustani").hide();
        $("#gumb_dodaj").show();
    });

    vrijednost = $("#trazilica").val();
    sortiraj_stupac = $('#sortiraj_stupac').val();
    vrsta_sortiranja = $('#vrsta_sortiranja').val();

    $.ajax({
        url: './dohvati_namjestaj.php',
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
    var tablica = $('<table id="namjestaj">');

    tablica.append("<thead><tr><th>Naziv</th><th>Cijena</th><th>Širina</th><th>Dužina</th><th>Visina</th><th>Boja</th><th>Stanje zaliha</th><th>Kategorija</th><th>Status</th><th colspan=2>Postavke</th></tr></thead>");

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
        red += "<td>" + $(this).attr("kategorija_namjestaja") + "</td>";
        red += "<td>" + $(this).attr("status_namjestaja") + "</td>";

        red += "<td><a href='#' class='azuriraj' id='" + $(this).attr("id_namjestaj") + "'>Ažuriraj</a></td>";
        red += "<td><a href='#' class='obrisi' id='" + $(this).attr("id_namjestaj") + "'>Obriši</a></td>";

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
        url: './dohvati_namjestaj.php',
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
            url: './dohvati_namjestaj.php',
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

$('#unesi_zapis').click(function () {
    var naziv = $('#naziv').val();
    var cijena = $('#cijena').val();
    var sirina = $('#sirina').val();
    var duzina = $('#duzina').val();
    var visina = $('#visina').val();
    var boja = $('#boja').val();
    var stanje_zaliha = $('#stanje_zaliha').val();
    var kategorija = $('#kategorija').val();
    var status = $('#status').val();

    $.ajax({
        url: './dohvati_namjestaj.php',
        type: "POST",
        async: false,
        data: {
            "naziv": naziv,
            "cijena": cijena,
            "sirina": sirina,
            "duzina": duzina,
            "visina": visina,
            "boja": boja,
            "stanje_zaliha": stanje_zaliha,
            "kategorija": kategorija,
            "status": status
        },
        success: function () {
            sakrij_formu();
            $.ajax({
                url: './dohvati_namjestaj.php',
                dataType: "xml",
                type: "GET",
                data: {
                    "pretrazi": vrijednost,
                    "sortiraj_stupac": sortiraj_stupac,
                    "vrsta_sortiranja": vrsta_sortiranja
                },
                success: prikazi_tablicu
            });
        }
    });
});

$("#ajax_tablica").on('click', '.azuriraj', function () {
    id_azuriraj = $(this).attr('id');

    $.ajax({
        url: './dohvati_namjestaj.php',
        dataType: "xml",
        type: "GET",
        data: { "azuriraj": id_azuriraj },
        success: popuni
    });
});

function popuni($data) {
    $($data).find('namjestaj').each(function () {
        $('#naziv').val($(this).attr("naziv"));
        $('#cijena').val($(this).attr("cijena"));
        $('#sirina').val($(this).attr("sirina"));
        $('#duzina').val($(this).attr("duzina"));
        $('#visina').val($(this).attr("visina"));
        $('#boja').val($(this).attr("boja"));
        $('#stanje_zaliha').val($(this).attr("stanje_zaliha"));
        $('#kategorija').val($(this).attr("kategorija"));
        $('#status').val($(this).attr("status"));
    });
    $("#gumb_dodaj").trigger('click');
    $("#unesi_zapis").hide();
    $("#azuriraj_zapis").show();
}

$("#azuriraj_zapis").click(function () {
    var naziv = $('#naziv').val();
    var cijena = $('#cijena').val();
    var sirina = $('#sirina').val();
    var duzina = $('#duzina').val();
    var visina = $('#visina').val();
    var boja = $('#boja').val();
    var stanje_zaliha = $('#stanje_zaliha').val();
    var kategorija = $('#kategorija').val();
    var status = $('#status').val();

    $.ajax({
        url: './dohvati_namjestaj.php',
        dataType: 'xml',
        type: 'POST',
        data: {
            "id_namjestaj": id_azuriraj,
            "naziv": naziv,
            "cijena": cijena,
            "sirina": sirina,
            "duzina": duzina,
            "visina": visina,
            "boja": boja,
            "stanje_zaliha": stanje_zaliha,
            "kategorija": kategorija,
            "status": status
        },
        success: function () {
            sakrij_formu();
            $.ajax({
                url: './dohvati_namjestaj.php',
                dataType: "xml",
                type: "GET",
                data: {
                    "pretrazi": vrijednost,
                    "sortiraj_stupac": sortiraj_stupac,
                    "vrsta_sortiranja": vrsta_sortiranja
                },
                success: prikazi_tablicu
            });
        }
    });
})

$("#ajax_tablica").on('click', '.obrisi', function () {
    id_obrisi = $(this).attr('id');

    $.ajax({
        url: './dohvati_namjestaj.php',
        dataType: 'xml',
        type: 'GET',
        data: { "obrisi": id_obrisi },
        success: function () {
            sakrij_formu();
            $.ajax({
                url: './dohvati_namjestaj.php',
                dataType: "xml",
                type: "GET",
                data: {
                    "pretrazi": vrijednost,
                    "sortiraj_stupac": sortiraj_stupac,
                    "vrsta_sortiranja": vrsta_sortiranja
                },
                success: prikazi_tablicu
            });
        }
    });
});

function sakrij_formu() {
    $("#gumb_odustani").trigger('click');
}