class App < Sinatra::Base

    # Funktion för att prata med databasen
    # Exempel på användning: db.execute('SELECT * FROM fruits')
    def db
      return @db if @db

      @db = SQLite3::Database.new("db/fruits.sqlite")
      @db.results_as_hash = true

      return @db
    end

    # Routen gör en redirect till '/fruits'
    get '/' do
        redirect('/fruits')
    end

    #Routen hämtar alla frukter i databasen
    get '/fruits' do
        @fruits = db.execute('SELECT * FROM fruits ORDER BY id DESC;')
        erb(:"fruits/index")
    end


    #Routen hämtar alla frukter i databasen
    post '/fruits/delete' do
      id = params["id"]
      @fruits = db.execute('DELETE FROM fruits WHERE id = ?;', id)
      redirect("/fruits")
    end

    # Övning no. 2.1
    # Routen visar ett formulär för att spara en ny frukt till databasen.
    get '/fruits/new' do
      erb(:"fruits/new")
    end

    post '/fruits/new' do
      name = params["name"]
      
      # Update
      db.execute("INSERT INTO fruits  (name) VALUES(\"#{name}\");")

      redirect("/fruits")
    end

    # Routen visar all info (från databasen) om en frukt
    get '/fruits/:id' do | id |
        @fruit = db.execute("SELECT * FROM fruits WHERE id = ?;", id)[0]
        erb(:"fruits/show")
    end

    # Routen tar bort frukten med id
    post '/fruits/:id/delete' do | id |
      db.execute("DELETE FROM fruits WHERE id =?", id)
      redirect("/fruits")
    end

    # Routen visar ett formulär på edit.erb för att ändra frukten med id
    get '/fruits/:id/edit' do | id |
      @fruit = db.execute('SELECT * FROM fruits WHERE id=?', id).first
      erb(:"fruits/edit")
    end


end
