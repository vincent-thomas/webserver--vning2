class App < Sinatra::Base

    def db
        return @db if @db

        @db = SQLite3::Database.new("db/fruits.sqlite")
        @db.results_as_hash = true

        return @db
    end
    
    # Routen visar:
    #   en klocka med datum
    #   när denna filen senast ändrades
    #   en exempel bild
    get '/' do
        @time = Time.now()
        @file_c_time = File.ctime(__FILE__)

        erb :clock
    end

    get '/fruits' do
        @fruits = db.execute('SELECT * FROM fruits ORDER BY id DESC')
        erb(:"fruits/index")
    end

end