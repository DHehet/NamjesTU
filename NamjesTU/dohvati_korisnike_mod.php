<?php
require_once 'zaglavlje.php';

function generiraj_korisnike_mod($rezultat){
    header("Content-Type:application/xml");
    echo '<?xml version="1.0" encoding="utf-8"?><korisnici>';
    while($polje = $rezultat->fetch_array()){
        $id_korisnik = $polje['id_korisnik'];
        $ime = $polje['ime'];
        $prezime = $polje['prezime'];

        echo "<korisnik id_korisnik='$id_korisnik' ime='$ime' prezime='$prezime'/>";
    }
    echo "</korisnici>";
}

 if($_SERVER["REQUEST_METHOD"] == "GET"){
    $upit = "SELECT id_korisnik, ime, prezime 
    FROM korisnik
    WHERE id_status_korisnika = 1;";
    $rezultat = $baza->selectDB($upit);
    
    generiraj_korisnike_mod($rezultat);
 }