automobile = {
	engine: {
		cylinder_head: {
			camshafts: ['intake', 'exhaust'],
			intake_valves: {
				clearance_valve_1: 0.13,
				clearance_valve_2: 0.15,
				clearance_valve_3: 0.18,
				clearance_valve_4: 0.12
				},
			exhaust_valves: {
				clearance_valve_1: 0.20,
				clearance_valve_2: 0.18,
				clearance_valve_3: 0.24,
				clearance_valve_4: 0.19
				}
		  },
	  cylinder_block: [
	  	'crankshaft',
	  	'pistons',
	  	'connecting rods',
	  	'oil pan'
	  	],
	  cooling: [
	  	'water pump',
	  	'thermostat',
	  	'radiator',
	  	'hoses'
	  	],
	  intake: [
	    'int manifold',
	    'fuel injectors',
	    'throttle body'
	    ],
	  exhaust: [
	    'exh manifold',
	    'O2 sensor',
	    'A/F sensor',
	    'muffler',
	    'resonator'
	    ],
	  lubrciation: [
	    'oil pump', 
	    'pressure sensor',
	    'oil pan and strainer',
	    'oil level switch'
	    ]
 	  },
  
	transmission: {
	  drive_pinion_assembly: [
	    'drive pinion shaft',
	    'driven shaft',
	    'synchros',
	    'driven gears',
	    'thrust bearing'
	    ],
	  transfer_case_and_extension: [
	    'center differential',
	    'transfer driven gear',
	    'ball bearing'
	    ],
	  front_differential: [
	    'drive pinion shaft',
	    'hypoid drive gear',
	    'differential bevel pinion'
	    ]
	  }
}

p automobile[:engine][:cylinder_head][:camshafts]
p automobile[:engine][:cylinder_block][2]
p automobile[:engine][:cylinder_head][:exhaust_valves]
p automobile[:engine][:cylinder_head][:exhaust_valves][:clearance_valve_4]
p automobile[:transmission][:transfer_case_and_extension]
p automobile[:transmission][:front_differential][1]