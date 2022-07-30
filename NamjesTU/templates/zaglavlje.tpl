<!DOCTYPE html>
<html lang="hr">

<head>
    <title>{$naslov}</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Dominik Hehet">
    <meta name="description" content="15.6.2022.">
    <link rel="icon" type="image/x-icon" href="materijali/favico.ico">
    <link href="css/dhehet.css" rel="stylesheet" type="text/css">
</head>

<body>
    <div id="page-container">
        {$skocni_prozor}
        <header class="header">
            <a href="index.php" class="logo">
                <img src="materijali/Logo.png" width="100" height="75" alt="Logo web stranice">
            </a>
            <input class="menu-btn" type="checkbox" id="menu-btn" />
            <label class="menu-icon" for="menu-btn">
                <span class="nav-icon"></span></label>

            <div class="text-container">
                <p id="prijavljeni-korisnik">{$pozdravna_poruka}</p>
                <h1 id="naslov">{$naslov}</h1>
            </div>

            <ul class="menu">
                {$meni}
            </ul>
        </header>