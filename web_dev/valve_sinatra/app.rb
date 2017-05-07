require 'sinatra'
require 'sqlite3'

valve_db = SQLite3::Database.new("calculator.db")
valve_db.results_as_hash = true

get '/' do
	@values = valve_db.execute("SELECT * FROM calculator")
	erb :home
end

