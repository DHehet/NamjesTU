<?php

include_once 'baza.class.php';

$baza = new Baza();
$baza->spojiDB();

function pomakni_vrijeme()
{
    global $baza;

    $url = "http://barka.foi.hr/WebDiP/pomak_vremena/pomak.php?format=xml";

    if (!($fp = fopen($url, 'r'))) {
        echo "Problem: nije moguće otvoriti url: " . $url;
        exit;
    }

    $xml_string = fread($fp, 10000);
    fclose($fp);

    $domdoc = new DOMDocument;
    $domdoc->loadXML($xml_string);

    $params = $domdoc->getElementsByTagName('brojSati');
    $sati = 0;

    if ($params != NULL) {
        $sati = $params->item(0)->nodeValue;
    }

    $upit = "UPDATE pomak_vremena SET vrijednost_pomaka = $sati WHERE id_pomak_vremena = 1;";
    $baza->updateDB($upit);
}

function vrijeme_info()
{
    global $baza;

    $upit = "SELECT vrijednost_pomaka FROM pomak_vremena WHERE id_pomak_vremena = 1;";
    $rezultat = $baza->selectDB($upit);
    $red = $rezultat->fetch_array();

    $server_vrijeme = time();
    $sustav_vrijeme = $server_vrijeme + ($red['vrijednost_pomaka'] * 60 * 60);
    //echo "Vrijeme servera: " . date('d.m.Y H:i', $server_vrijeme) . "<br>";
    $trenutacno_vrijeme = "Vrijeme sustava: " . date('d.m.Y H:i', $sustav_vrijeme);

    return $trenutacno_vrijeme;
}

function dohvati_vrijeme()
{
    global $baza;

    $upit = "SELECT vrijednost_pomaka FROM pomak_vremena WHERE id_pomak_vremena = 1;";
    $rezultat = $baza->selectDB($upit);
    $red = $rezultat->fetch_array();

    $server_vrijeme = time();
    $sustav_vrijeme = date("Y-m-d H:i:s", $server_vrijeme + ($red['vrijednost_pomaka'] * 60 * 60));

    return $sustav_vrijeme;
}
