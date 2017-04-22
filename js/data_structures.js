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

console.log(horses)