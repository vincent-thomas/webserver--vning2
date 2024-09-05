class App < Sinatra::Base

    # Funktion som returnerar en databaskoppling
    # Exempel på användning: db.execute('Din SQL-fråga')
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
        @fruits = db.execute('SELECT * FROM fruits ORDER BY id DESC')
        erb(:"fruits/index")
    end

    # Övning no. 2
    # Routen visar ett formulär för att spara en ny frukt till databasen.
    get '/fruits/new' do 
        erb(:"fruits/new")
    end

    # Routen sparar data till databasen och gör en redirect till '/fruits'.
    post '/fruits' do 
        #todo
    end

    # Övning no. 1
    # Routen visar en lista på alla frukter i databasen.
    # Varför .first?
    get '/fruits/:id' do | id |
        @fruit = db.execute('SELECT * FROM fruits WHERE id=?',id).first
        p @fruit
        
        erb(:"fruits/show")
    end

end