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

var obj1 = {'YY': 'kitty', 'color': 'white', 'food': 'grosss'}
    obj2 = {'ShooShoo': 'kitty', 'color': 'black', 'food': 'gross'}

// function to get keys of obj

function getKeys(obj) {
  return Object.keys(obj)
}

// function to compare values

function compareKeys(keys1, keys2) {
  matchedKeys = []
  for (i=0; i<keys1.length; i++) {
  	for (j=0; j<keys2.length; j++) {
  		if (keys1[i] === keys2[j]) {
  			matchedKeys.push(keys1[i])
  		}
  	}
  }
}

// function to compare values at matching keys

function compareValues(obj1, obj2, matchedKeys) {
	matchedValues = []
	for (i=0; i<matchedKeys.length; i++) {
		if (obj1[matchedKeys.i] === obj2[matchedKeys.i]) {
			matchedValues.push(obj1[matchedKeys])
		}
	}
}


// function to check if any element in matched values array

function anyKeyValueMatch(arr) {
	if (arr.length > 0) {
		return true 
		} else {
		return false
	}
	console.log(arr)
}

compareKeys(getKeys(obj1), getKeys(obj2))
console.log(getKeys(obj1))
console.log(getKeys(obj2))
console.log(matchedKeys)
compareValues(obj1, obj2, matchedKeys)
console.log(matchedValues)
console.log(anyKeyValueMatch(matchedValues))




// input: two objects. output: true if any key/value pairs match.
// take each key of first object and compare to second object
  // return false if no match
// take key matches and compare value
  // return true iff value match
  // return false otherwise

// var obj1KeyArr = Object.keys(obj1)
//     obj2KeyArr = Object.keys(obj2)
//     matchedKeys = []

// for (i=0; i<obj1KeyArr.length; i++) {
//   for (j=0; j<obj2KeyArr.length; j++) {
//   	if (obj1KeyArr[i] == obj2KeyArr[j]) {
//   		matchedKeys.push(obj1KeyArr[i])
//   	}
//   }	
// }

// var largestObj = null

// if (obj1KeyArr.length > obj2KeyArr.length) {
// 	largestObj = obj1
// } else {
// 	largestObj = obj2
// }

// function printValues(obj) {
//   for (i in obj) {
//   	console.log(obj[i])
//   }
// }

// printValues(obj1)

// DRIVER CODE

// console.log(findLongest(['long string', 'longest string', 'longer string']))
// console.log(findLongest(['something', 'this', 'that other thing']))
// console.log(findLongest(['I\'m the first element', 'yeah, it is', 'short']))


