## VALVE SHIM CALCULATOR ##

require 'sqlite3'

## BUILD DUMMY TABLE ##

valve_calculator_db = SQLite3::Database.new("calculator.db")
create_measurement_table = <<-measurements
	CREATE TABLE IF NOT EXISTS measurements(
		id INTEGER PRIMARY KEY,
		cylinder VARCHAR(255),
		int_exh VARCHAR(255),
		clr INT,
		shim INT,
		ideal INT
	)
measurements

valve_calculator_db.execute(create_measurement_table)

cylinder_arr = ['2a', '1a', '2b', '1b', '4a', '3a', '4b', '3b']
cylinder_arr.each_with_index do |position, index|
	if position == '2a' || position == '2b' || position == '4a' || position == '4b'
		valve_calculator_db.execute("INSERT INTO measurements (cylinder, int_exh, clr, shim, ideal) VALUES ('#{position}', 'exh', 0, 0, 0)")
		valve_calculator_db.execute("INSERT INTO measurements (cylinder, int_exh, clr, shim, ideal) VALUES ('#{position}', 'int', 0, 0, 0)")
	elsif position == '1a' || position == '1b' || position == '3a' || position == '3b'
		valve_calculator_db.execute("INSERT INTO measurements (cylinder, int_exh, clr, shim, ideal) VALUES ('#{position}', 'int', 0, 0, 0)")
		valve_calculator_db.execute("INSERT INTO measurements (cylinder, int_exh, clr, shim, ideal) VALUES ('#{position}', 'exh', 0, 0, 0)")
	end
end	


## USER INTERACTION ##

# prompt user for intake or exhaust and cylinder position
	# "Please input cylinder position and intake and exhaust using the format: '1a int' or '3b exh'"
user_prompt = nil
while true
	if user_prompt == nil || user_prompt == "next"
		puts "\e[H\e[2J"
		puts "Welcome to the Valve Shim Calculator."
		puts "Please input cylinder position and intake or exhaust using the following format: '1a int' or '3b exh':"
		position_arr = gets.chomp.split(' ')
		user_cyl_position = position_arr[0]
		user_int_exh = position_arr[1]

		# prompt user for clearance
		  # "what is the clearance at [location]"
		puts "What is the measured clearance at #{user_cyl_position} #{user_int_exh}?"		
		clearance = gets.chomp.to_f
		valve_calculator_db.execute("UPDATE measurements SET clr = #{clearance} WHERE cylinder = '#{user_cyl_position}' AND int_exh = '#{user_int_exh}'")

		# prompt user for shim size
			# "what is the shim size at [location]"
		puts "What is the current shim size at #{user_cyl_position} #{user_int_exh}?"
		shim = gets.chomp.to_f
		valve_calculator_db.execute("UPDATE measurements SET shim = #{shim} WHERE cylinder = '#{user_cyl_position}' AND int_exh = '#{user_int_exh}'")

		# calculate and return ideal shim size
			# "this is the ideal shim size for [location] based on this calculation: [calculation]"
		calc_clr = valve_calculator_db.execute("SELECT clr FROM measurements WHERE cylinder = '#{user_cyl_position}' AND int_exh = '#{user_int_exh}'")[0][0]
		calc_shim = valve_calculator_db.execute("SELECT shim FROM measurements WHERE cylinder = '#{user_cyl_position}' AND int_exh = '#{user_int_exh}'")[0][0]
		if user_int_exh == 'int'
			user_ideal = (((calc_shim*0.01)+1.54*(calc_clr-0.13))*100).floor
		elsif user_int_exh == 'exh'
		  user_ideal = (((calc_shim*0.01)+1.69*(calc_clr-0.22))*100).floor
		end
		valve_calculator_db.execute("UPDATE measurements SET ideal = #{user_ideal} WHERE cylinder = '#{user_cyl_position}' AND int_exh = '#{user_int_exh}'")
		puts "The ideal shim size for #{user_cyl_position} #{user_int_exh} is: #{user_ideal}"

	  puts "Available commands: 'next' for next shim calculation, 'chart' for output of current measurements, or 'exit' to exit the program."
	  user_prompt = gets.chomp

	# output data into chart

	elsif user_prompt == "chart"
		def gets_clearance(valve_calculator_db, position, int_exh)
			valve_calculator_db.execute("SELECT clr FROM measurements WHERE cylinder = '#{position}' AND int_exh = '#{int_exh}'")[0][0].to_s
		end

	  def gets_shim(valve_calculator_db, position, int_exh)
	  	valve_calculator_db.execute("SELECT shim FROM measurements WHERE cylinder = '#{position}' AND int_exh = '#{int_exh}'")[0][0].to_s
	  end

	  def gets_ideal(valve_calculator_db, position, int_exh)
	  	valve_calculator_db.execute("SELECT ideal FROM measurements WHERE cylinder = '#{position}' AND int_exh = '#{int_exh}'")[0][0].to_s
	  end

		puts "\e[H\e[2J"
		puts "Here are the current measurements:"
	  id_arr = ['1a', '1b', '2a', '2b', '3a', '3b', '4a', '4b']
	  id_arr.each do |i|
		  puts "CYLINDER #{i} intake Measurements: "
		  puts "Clearance: " + gets_clearance(valve_calculator_db, i, 'int')
		  puts "Current Shim: " + gets_shim(valve_calculator_db, i, 'int')
		  puts "Ideal   Shim: " + gets_ideal(valve_calculator_db, i, 'int')
			puts ''
		  puts "CYLINDER #{i} exhaust Measurements: "
		  puts "Clearance: " + gets_clearance(valve_calculator_db, i, 'exh')
		  puts "Current Shim: " + gets_shim(valve_calculator_db, i, 'exh')
		  puts "Ideal   Shim: " + gets_ideal(valve_calculator_db, i, 'exh')
		  puts ''
	  end
	  puts "Would you like to update any values? Enter 'next' to go back and enter new values or 'exit' to exit the program."
	  user_prompt = gets.chomp
  elsif user_prompt == "exit"
  	break
  end
end