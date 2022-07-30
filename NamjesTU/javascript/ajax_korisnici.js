$(document).ready(function () {
    vrijednost = $("#trazilica").val();
    sortiraj_stupac = $('#sortiraj_stupac').val();
    vrsta_sortiranja = $('#vrsta_sortiranja').val();

    $.ajax({
        url: './dohvati_korisnike.php',
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
    var tablica = $('<table id="korisnici">');

    tablica.append("<thead><tr><th>Ime</th><th>Prezime</th><th>Korisničko ime</th><th>Email</th><th>Mobilni broj</th><th>Broj neuspješnih prijava</th><th>Uvjeti korištenja</th><th>Status korisnika</th><th>Postavke</th></tr></thead>");

    var tbody = $("<tbody>");

    $($data).find('korisnik').each(function () {
        var red = "<tr>";

        red += "<td>" + $(this).attr("ime") + "</td>";
        red += "<td>" + $(this).attr("prezime") + "</td>";
        red += "<td>" + $(this).attr("korisnicko_ime") + "</td>";
        red += "<td>" + $(this).attr("email") + "</td>";
        red += "<td>" + $(this).attr("mob_broj") + "</td>";
        red += "<td>" + $(this).attr("broj_neusp_prijava") + "</td>";
        red += "<td>" + $(this).attr("uvjeti_koristenja") + "</td>";
        red += "<td>" + $(this).attr("status") + "</td>";

        if ($(this).attr("broj_neusp_prijava") < 3) {
            red += "<td><a href='#' class='blokiraj' id='" + $(this).attr("id_korisnik") + "'>Blokiraj</a></td>";
        }
        else if ($(this).attr("broj_neusp_prijava") >= 3) {
            red += "<td><a href='#' class='otkljucaj' id='" + $(this).attr("id_korisnik") + "'>Otključaj</a></td>";
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
        url: './dohvati_korisnike.php',
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
            url: './dohvati_korisnike.php',
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

$("#ajax_tablica").on('click', '.blokiraj', function () {
    id_blokiraj = $(this).attr('id');
    vrijednost = $("#trazilica").val();
    sortiraj_stupac = $('#sortiraj_stupac').val();
    vrsta_sortiranja = $('#vrsta_sortiranja').val();

    $.ajax({
        url: './dohvati_korisnike.php',
        dataType: 'xml',
        type: 'GET',
        data: { "blokiraj": id_blokiraj },
        success: function () {
            $.ajax({
                url: './dohvati_korisnike.php',
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

$("#ajax_tablica").on('click', '.otkljucaj', function () {
    id_otkljucaj = $(this).attr('id');
    vrijednost = $("#trazilica").val();
    sortiraj_stupac = $('#sortiraj_stupac').val();
    vrsta_sortiranja = $('#vrsta_sortiranja').val();

    $.ajax({
        url: './dohvati_korisnike.php',
        dataType: 'xml',
        type: 'GET',
        data: { "otkljucaj": id_otkljucaj },
        success: function () {
            $.ajax({
                url: './dohvati_korisnike.php',
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