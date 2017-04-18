// LONGEST STRING

// input: array of strings. output: longest string in array.
// array.length.max? probably too ruby
// iterate over array and run conditional on .length of each element
// create and update a 'longestStr' variable 

function findLongest(arraryofStrings) {
  var longestStr = '';
  for (i=0; i<arraryofStrings.length; i++) {
  	if (arraryofStrings[i].length > longestStr.length) {
			longestStr = arraryofStrings[i]
		}
  }
  return longestStr;
}

// OBJECT MATCH

// input: two objects. output: true if any key/value pairs match.
// take each key of first object and compare to second object
  // return false if no match
// take key matches and compare value
  // return true iff value match
  // return false otherwise



var obj1 = {name: "Dan", age: 30}
var obj2 = {name: "Joe", age: 37}

// console.log("age" in obj2 && "age" in obj1)

for (key in obj1) {
	console.log(obj1[key] === obj2[key]);
}


















// DRIVER CODE

// console.log(findLongest(['long string', 'longest string', 'longer string']))
// console.log(findLongest(['something', 'this', 'that other thing']))
// console.log(findLongest(['I\'m the first element', 'yeah, it is', 'short']))


