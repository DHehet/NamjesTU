$(document).ready(function () {
    $("#gumb_dodaj").click(function () {
        $(".form-dodaj-kat").show();
        $("#gumb_dodaj").hide();
        $("#gumb_odustani").show();
        $("#unesi_zapis").show();
        $("#azuriraj_zapis").hide();
    });
    $("#gumb_odustani").click(function () {
        $('#naziv').val('');
        $(".form-dodaj-kat").hide();
        $("#gumb_odustani").hide();
        $("#gumb_dodaj").show();
    });

    $.ajax({
        url: './dohvati_korisnike_mod.php',
        dataType: "xml",
        type: "GET",
        success: prikazi_korisnike
    });

    vrijednost = $("#trazilica").val();
    sortiraj_stupac = $('#sortiraj_stupac').val();
    vrsta_sortiranja = $('#vrsta_sortiranja').val();

    $.ajax({
        url: './dohvati_kategorije_namjestaja.php',
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
    var tablica = $('<table id="kategorije">');

    tablica.append("<thead><tr><th>Naziv</th><th>Moderator</th><th colspan=2>Postavke</th></tr></thead>");

    var tbody = $("<tbody>");

    $($data).find('kategorija').each(function () {
        var red = "<tr>";

        red += "<td>" + $(this).attr("naziv") + "</td>";
        red += "<td>" + $(this).attr("moderator_ime") + " " + $(this).attr("moderator_prezime") + "</td>";

        red += "<td><a href='#' class='azuriraj' id='" + $(this).attr("id_kategorija_namjestaja") + "'>Ažuriraj</a></td>";
        red += "<td><a href='#' class='obrisi' id='" + $(this).attr("id_kategorija_namjestaja") + "'>Obriši</a></td>";

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
        url: './dohvati_kategorije_namjestaja.php',
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
            url: './dohvati_kategorije_namjestaja.php',
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
    var id_korisnik = $('#moderator').val();

    $.ajax({
        url: './dohvati_kategorije_namjestaja.php',
        type: "POST",
        async: false,
        data: {
            "naziv": naziv,
            "id_korisnik": id_korisnik
        },
        success: function () {
            sakrij_formu();
            $.ajax({
                url: './dohvati_kategorije_namjestaja.php',
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
        url: './dohvati_kategorije_namjestaja.php',
        dataType: "xml",
        type: "GET",
        data: { "azuriraj": id_azuriraj },
        success: popuni
    });
});

function popuni($data) {
    $($data).find('kategorija').each(function () {
        $('#naziv').val($(this).attr("naziv"));
        $('#moderator').val($(this).attr("id_korisnik"));
    });
    $("#gumb_dodaj").trigger('click');
    $("#unesi_zapis").hide();
    $("#azuriraj_zapis").show();
}

$("#azuriraj_zapis").click(function () {
    var naziv = $('#naziv').val();
    var id_korisnik = $('#moderator').val();

    $.ajax({
        url: './dohvati_kategorije_namjestaja.php',
        dataType: 'xml',
        type: 'POST',
        data: {
            "id_kategorija_namjestaja": id_azuriraj,
            "naziv": naziv,
            "id_korisnik": id_korisnik
        },
        success: function () {
            sakrij_formu();
            $.ajax({
                url: './dohvati_kategorije_namjestaja.php',
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
    console.log(id_obrisi);

    $.ajax({
        url: './dohvati_kategorije_namjestaja.php',
        dataType: 'xml',
        type: 'GET',
        data: { "obrisi": id_obrisi },
        success: function () {
            sakrij_formu();
            $.ajax({
                url: './dohvati_kategorije_namjestaja.php',
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

function prikazi_korisnike($data) {
    var popis = "<option value='' selected>Postavi moderatora</option>";

    $($data).find('korisnik').each(function () {
        popis += "<option value='" + $(this).attr("id_korisnik") + "'>" + $(this).attr("ime") + " " + $(this).attr("prezime") + "</option>";
    });

    $("#moderator").html(popis);
}

function sakrij_formu() {
    $("#gumb_odustani").trigger('click');
}