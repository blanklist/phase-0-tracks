require 'sinatra'
require 'sqlite3'

valve_db = SQLite3::Database.new("calculator.db")

get '/' do
	@values = valve_db.execute("SELECT * FROM measurements")
	@clearance = valve_db.execute("SELECT clr FROM measurements")
	@shim = valve_db.execute("SELECT shim FROM measurements")
	@ideal = valve_db.execute("SELECT ideal FROM measurements")
	erb :home
end

post '/update' do
	valve_db.execute("UPDATE measurements SET clr=? WHERE cylinder=?", [params['clearance'], params['cylinder']])

end