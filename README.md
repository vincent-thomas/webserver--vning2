# Webbserverprogrammering 1 - Övning 2
Exempel-projekt nummer 2 med övningar till kursen Webbserverprogrammering 1 på NTI Gymnasiet Johanneberg. 
Efter genomgång görs övningar nedan i par.

## Komma igång
* Ladda ner repositoriet till mappen Webbserverprogrammering på din dator. Antingen som ZIP (isåfall måste du packa upp ZIP-filen) eller så laddar du ner med: `git clone`
* Installera: `bundle install`
* *Seeda* databasen: `rake seed`
* Köra: `rake dev`
* Surfa till: http://localhost:9292

## Genomgång 1
* Visa routen GET /fruits + /views/fruits/index.erb
    * Visa layout.erb
    * Visa SQL inkl. seeder, db-metoden i app.rb & db browser
    * Visa SQL Bolt

## Uppgifter 1 (i par)
1. Visa all info om en frukt på routen '/fruits/:id'. Gör SQL Bolt t.o.m. övning som stöd 5. Använd ERB-filen fruits/show.erb Använd även layout.erb-filen för sidhuvud och sidfot.
    * Lägg till fler funktioner som t.ex. att visa stjärnor istället för ett nummer för fruktbetyg
2. Lägg till ett formulär för att skapa en ny frukt. Börja med routen GET '/fruits/new'.

## Genomgång 2
* Ta bort en frukt
* Uppdatera en frukt
* C.R.U.D.

## Uppgifter 2 (i par)
3. Gör en ta-bort-knapp som tar bort en frukt
4. Gör en ändra-knapp
5. Utöka funktionerna.
    * Utforska och lägg till de funktioner du tycker behövs
    * Lägg till bilder till frukterna
    * Lägg till kategorier för frukter & grönsaker