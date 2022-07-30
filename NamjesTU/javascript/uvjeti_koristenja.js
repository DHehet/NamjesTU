var prozor = document.getElementById('skocni-prozor');
var gumb = document.getElementById('btn-uvjeti-koristenja')

$(document).ready(function () {
    prozor.style.display = "block";

    $(gumb).click(function () {
        $.ajax ({
            url: 'uvjeti_koristenja.php',
            dataType: 'json',
            success: function (data) {

            }
        });

        prozor.style.display = "none";
    });

});