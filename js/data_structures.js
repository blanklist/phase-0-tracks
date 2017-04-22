var colors = ['blue', 'red', 'orange', 'green'];
var names = ['Ed', 'Billy', 'Marsha', 'Clyde'];

colors.push('cyan');
names.push('Violet');

// console.log(colors);
// console.log(names);

var horses = {};
for (i=0; i<colors.length; i++) {
	horses[names[i]] = colors[i]
}

// console.log(horses)

function Car(color, model, price) {
	this.color = color;
	this.model = model;
	this.price = price;
	this.isNew = true;

	this.honk = function() {console.log('honk!'); };
	this.runs = function() {console.log('VROOM'); };
	this.resale = function() { this.price = price * .5; this.isNew = false; };
};

var porsche = new Car('Mexico Blue', '911', 90000);
console.log(porsche.price);
console.log(porsche.isNew);
porsche.resale();
console.log(porsche.price);
console.log(porsche.isNew);

var jeep = new Car('Army Green', 'Wrangler', 42000);
jeep.honk();
jeep.runs();
