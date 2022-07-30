var kolacic_korime = document.cookie
    .split('; ')
    .find(row => row.startsWith('zapamti-korime='))
    ?.split('=')[1];

//console.log(kolacic_korime);

if (kolacic_korime != null) {
    var unos = document.getElementById("korime");

    unos.value = kolacic_korime;
}

else {
    console.log("Kolačić za spremanje korisničkog imena nije namješten!");
}