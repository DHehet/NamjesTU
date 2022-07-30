# NamjesTU
Web stranica koja služi za kupnju namještaja i administrativne poslove vezane uz upravljanje stranicom.
## Funkcionalnosti
Na svakoj stranici, na kojoj je to primjenjivo, je omogućeno filtriranje, sortiranje i pretraživanje podataka.
### Registracija
Korisnik se prvo mora registrirati kako bi kupio namještaj. Potrebno je unijeti podatke u polja te potvrditi reCAPTCHA okvir.

![image](https://user-images.githubusercontent.com/92993079/181908859-5d280059-d9d4-4802-92b6-5ccb73acf2f5.png)

### Popis namještaja
Korisnik može vidjeti popis namještaja koji može kupiti. Mogu se vidjeti određene informacije vezane uz komad namještaja te **administrator** može ažurirati ili obrisati namještaj s popisa.

![image](https://user-images.githubusercontent.com/92993079/181908966-530fc9f9-c344-4fed-9f0c-38a73fd22cec.png)

### Popis korisnika
**Administrator** može vidjeti popis registriranih korisnika te njihove informacije. Određenog korisnika može blokirati ili deblokirati.

![image](https://user-images.githubusercontent.com/92993079/181909081-f3074d0a-ed3a-4c32-8aca-da0e1d2d3ead.png)

### Dnevnik rada
**Administrator** također ima pristup dnevniku rada u kojem se nalaze zapisi o aktivnostima koje korisnici obavljaju na web stranici.

![image](https://user-images.githubusercontent.com/92993079/181909117-5cb0fab3-bf0c-42bc-a712-82ca80df2149.png)

### Pomak vremena
Stranica koristi virtualno vrijeme koje se računa kao pomak u budućnost (+) ili prošlost (-) od trenutnog, stvarnog vremena. Na taj način možemo ubrzati odvijanje određenih procesa npr. ako je dostava namještaja za 3 dana tada možemo pomaknuti vrijeme u budućnost kako bi klijent mogao pokupiti namještaj brže.

![image](https://user-images.githubusercontent.com/92993079/181909154-0894e206-9cfd-41a8-9bad-00714152f81c.png)

## Korištenje
Web stranica koristi lokalnu bazu podataka koristeći phpMyAdmin te je istu potrebno kreirati prije početka rada.

Ime baze se može promijeniti po želji u datoteci `baza.class.php` no zadano ime je `namjestu_baza`.

Tajni ključ koji se koristi za reCAPTCHA potvrdu je skriven unutar varijable okruženja
```
reCAPKey
```
