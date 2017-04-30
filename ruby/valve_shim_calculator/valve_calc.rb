## VALVE SHIM CALCULATOR ##

require 'sqlite3'


# create dummy chart
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


# populate dummy chart with zeroes and positions (position = 'cyl1a int' etc)
# populate_measurements_table
valve_calculator_db.execute("INSERT INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) VALUES (0, 0, 0, 1, 1)")
valve_calculator_db.execute("INSERT INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) VALUES (0, 0, 0, 2, 1)")
valve_calculator_db.execute("INSERT INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) VALUES (0, 0, 0, 3, 1)")
valve_calculator_db.execute("INSERT INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) VALUES (0, 0, 0, 4, 1)")
valve_calculator_db.execute("INSERT INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) VALUES (0, 0, 0, 5, 1)")
valve_calculator_db.execute("INSERT INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) VALUES (0, 0, 0, 6, 1)")
valve_calculator_db.execute("INSERT INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) VALUES (0, 0, 0, 7, 1)")
valve_calculator_db.execute("INSERT INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) VALUES (0, 0, 0, 8, 1)")
valve_calculator_db.execute("INSERT INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) VALUES (0, 0, 0, 1, 2)")
valve_calculator_db.execute("INSERT INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) VALUES (0, 0, 0, 2, 2)")
valve_calculator_db.execute("INSERT INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) VALUES (0, 0, 0, 3, 2)")
valve_calculator_db.execute("INSERT INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) VALUES (0, 0, 0, 4, 2)")
valve_calculator_db.execute("INSERT INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) VALUES (0, 0, 0, 5, 2)")
valve_calculator_db.execute("INSERT INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) VALUES (0, 0, 0, 6, 2)")
valve_calculator_db.execute("INSERT INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) VALUES (0, 0, 0, 7, 2)")
valve_calculator_db.execute("INSERT INTO measurements (clr, shim, ideal, cyl_id, int_exh_id) VALUES (0, 0, 0, 8, 2)")

# populate_cyl_table
valve_calculator_db.execute("INSERT INTO cyl (cyl) VALUES ('1a')")
valve_calculator_db.execute("INSERT INTO cyl (cyl) VALUES ('1b')")
valve_calculator_db.execute("INSERT INTO cyl (cyl) VALUES ('2a')")
valve_calculator_db.execute("INSERT INTO cyl (cyl) VALUES ('2b')")
valve_calculator_db.execute("INSERT INTO cyl (cyl) VALUES ('3a')")
valve_calculator_db.execute("INSERT INTO cyl (cyl) VALUES ('3b')")
valve_calculator_db.execute("INSERT INTO cyl (cyl) VALUES ('4a')")
valve_calculator_db.execute("INSERT INTO cyl (cyl) VALUES ('4b')")

# populate_int_exh_table
valve_calculator_db.execute("INSERT INTO int_exh (int_exh) VALUES ('int')")
valve_calculator_db.execute("INSERT INTO int_exh (int_exh) VALUES ('exh')")

# output dummy chart
  # format 
    # vertical or horizontal (or both?)
def initial_display(db)
	cylinder_1a_exh_shim = db.execute("SELECT measurements.clr FROM measurements WHERE cyl_id=1 AND int_exh_id=2")
	cylinder_1a_int_shim = db.execute("SELECT measurements.clr FROM measurements WHERE cyl_id=1 AND int_exh_id=1")
	cylinder_3a_int_shim = db.execute("SELECT measurements.clr FROM measurements WHERE cyl_id=5 AND int_exh_id=1")
	cylinder_3a_exh_shim = db.execute("SELECT measurements.clr FROM measurements WHERE cyl_id=5 AND int_exh_id=2")
	cylinder_1b_exh_shim = db.execute("SELECT measurements.clr FROM measurements WHERE cyl_id=2 AND int_exh_id=2")
	cylinder_1b_int_shim = db.execute("SELECT measurements.clr FROM measurements WHERE cyl_id=2 AND int_exh_id=1")
	cylinder_3b_int_shim = db.execute("SELECT measurements.clr FROM measurements WHERE cyl_id=6 AND int_exh_id=1")
	cylinder_3b_exh_shim = db.execute("SELECT measurements.clr FROM measurements WHERE cyl_id=6 AND int_exh_id=2")

	p "Here is the current chart:"
	p "|  cyl  |EXH|INT|INT|EXH|  |"
	p "|1  SHIM| #{cylinder_1a_exh_shim.to_s} | #{cylinder_1a_int_shim[0][0].to_s} | #{cylinder_3a_int_shim[0][0].to_s} | #{cylinder_3a_exh_shim[0][0].to_s} |  |"
	p "|1   CLR| #{cylinder_1a_exh_shim[0][0].to_s} | #{cylinder_1a_int_shim[0][0].to_s} | #{cylinder_3a_int_shim[0][0].to_s} | #{cylinder_3a_exh_shim[0][0].to_s} |  |"
end

initial_display(valve_calculator_db)



# able to update chart
  # user interface
    # formatting for query: location entered by user or location prompted by program?



# continuous output of updated chart
	# and request for new update




# ? confirmation of equations ? model/year ?

