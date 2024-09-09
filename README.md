# Webbserverprogrammering 1 - Övning 2
Exempel-projekt nummer 2 med övningar till kursen Webbserverprogrammering 1 på NTI Gymnasiet Johanneberg. 
Efter genomgång görs övningar nedan i par.

![Alt text](docs/img/fruktparadiset.png)

## Komma igång
* Ladda ner repositoriet till mappen Webbserverprogrammering på din dator. Antingen som ZIP (isåfall måste du packa upp ZIP-filen) eller så laddar du ner med: `git clone`
* Installera: `bundle install`
* *Seeda* databasen: `rake seed`
* Köra: `rake dev`
* Surfa till: http://localhost:9292

## Länkar
* https://sqlbolt.com/
* https://sqlitebrowser.org/

## Genomgång 1
* Visa routes `GET /fruits` och `/views/fruits/index.erb`
* Visa `layout.erb`
* Visa SQL:
    * `db/seeder.rb`
    * `db/fruits.sqlite`
    * `app.rb/db-metoden` 
    * *DB Browser for SQLite*
    * *SQLBolt*

## Uppgifter 1 (i par)
1. Gör *SQL Bolt* t.o.m. **övning 5**.
2. Visa all info om en frukt på routen `'/fruits/:id'`. 
    * Använd `fruits/show.erb` och `layout.erb`.
    * Lägg till fler funktioner som t.ex. att visa stjärnor istället för ett nummer för fruktbetyg
3. Lägg till ett formulär för att skapa en ny frukt. Börja med routen `GET '/fruits/new'`. 
    * För att spara frukten behöver du skicka datat från formuläret till `POST '/fruits/new'`. Se uppgifter nedan.

## Genomgång 2
* Ta bort en frukt
* Uppdatera en frukt
* C.R.U.D.

## Uppgifter 2 (i par)
4. Gör SQL Bolt t.o.m. övning 15.
5. Gör en ta-bort-knapp som tar bort en frukt.
6. Gör en ändra-knapp
7. Utöka funktionerna.
    * Utforska och lägg till de funktioner du tycker behövs
    * Lägg till bilder till frukterna
    * Lägg till kategorier för frukter & grönsaker