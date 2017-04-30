## VALVE SHIM CALCULATOR ##

require 'sqlite3'

## BUILD DUMMY TABLES ##

valve_calculator_db = SQLite3::Database.new("calculator.db")
create_measurement_table = <<-measurements
	CREATE TABLE IF NOT EXISTS measurements(
		id INTEGER PRIMARY KEY,
		clr INT,
		shim INT,
		ideal INT,
		cyl_id INT,
		int_exh_id INT,
		FOREIGN KEY (cyl_id) REFERENCES cyl(id),
		FOREIGN KEY (int_exh_id) REFERENCES int_exh(id)
	)
measurements

create_cyl_table = <<-cylinder
	CREATE TABLE IF NOT EXISTS cyl(
		id INTEGER PRIMARY KEY,
		cyl VARCHAR(255)
	)
cylinder

create_int_exh_table = <<-int_exh
	CREATE TABLE IF NOT EXISTS int_exh(
	  id INTEGER PRIMARY KEY,
	  int_exh VARCHAR(255)
	)
int_exh

valve_calculator_db.execute(create_measurement_table)
valve_calculator_db.execute(create_cyl_table)
valve_calculator_db.execute(create_int_exh_table)

valve_calculator_db.execute("INSERT OR IGNORE INTO int_exh (int_exh) SELECT ('int') WHERE NOT EXISTS (SELECT 1 FROM int_exh WHERE int_exh = 'int')")
valve_calculator_db.execute("INSERT OR IGNORE INTO int_exh (int_exh) SELECT ('exh') WHERE NOT EXISTS (SELECT 1 FROM int_exh WHERE int_exh = 'exh')")

cylinder_arr = ['2a', '1a', '2b', '1b', '4a', '3a', '4b', '3b']
cylinder_arr.each_with_index do |position, index|
	valve_calculator_db.execute("INSERT OR IGNORE INTO cyl (cyl) SELECT ('#{position}') WHERE NOT EXISTS (SELECT 1 FROM cyl WHERE cyl = ('#{position}'))")
	if position == '2a' || position == '2b' || position == '4a' || position == '4b'
		valve_calculator_db.execute("INSERT OR IGNORE INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) SELECT (0, 0, 0, #{index} + 1, 2) WHERE NOT EXISTS (SELECT * FROM measurements WHERE clr = 0, shim = 0, ideal = 0, cyl_id = #{index} + 1, int_exh = 2")
		valve_calculator_db.execute("INSERT OR IGNORE INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) SELECT (0, 0, 0, #{index} + 1, 1) WHERE NOT EXISTS (SELECT 1 FROM measurements WHERE clr = 0")
	elsif position == '1a' || position == '1b' || position == '3a' || position == '3b'
		valve_calculator_db.execute("INSERT OR IGNORE INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) SELECT (0, 0, 0, #{index} + 1, 1) WHERE NOT EXISTS (SELECT 1 FROM measurements WHERE clr = 0")
		valve_calculator_db.execute("INSERT OR IGNORE INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) SELECT (0, 0, 0, #{index} + 1, 2) WHERE NOT EXISTS (SELECT 1 FROM measurements WHERE clr = 0")
	end
end

## USER INTERACTION ##

# prompt user for intake or exhaust and cylinder position
	# "Please input cylinder position and intake and exhaust using the format: '1a int' or '3b exh'"

puts "\e[H\e[2J"
puts "Welcome to the Valve Shim Calculator."
puts "Please input cylinder position and intake or exhasut using the following format: '1a int' or '3b exh':"
position_arr = gets.chomp.split(' ')
cyl_position = position_arr[0]
int_exh = position_arr[1]
p position_arr
p cyl_position
p int_exh



# prompt user for clearance
  # "what is the clearance at [location]"

# prompt user for shim size
	# "what is the shim size at [location]"

# calculate and return ideal shim size
	# "this is the ideal shim size for [location] based on this calculation: [calculation]"






# display past calculations
	# this may be out of scope for this project but at least a data dump available.