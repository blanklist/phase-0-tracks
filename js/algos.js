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

var obj1 = {'YY': 'kitty', 'color': 'white', 'food': 'gross'}
    obj2 = {'ShooShoo': 'kitty', 'color': 'black', 'food': 'gross'}
    obj3 = {'YY': 'kitty', 'color': 'white', 'meow': 'hella'}

// function to get keys of obj

function getKeys(obj) {
  return Object.keys(obj)
}

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
		if (obj1[matchedKeys[i]] === obj2[matchedKeys[i]]) {
			matchedValues.push(obj1[matchedKeys[i]])
		}
	}
}

// function to check if any element in matched values array

function hasMatch(arr) {
	if (arr.length > 0) {
	  return true;
	} else {
    return false;
  }
}

// function to bring everything together (two objects being processed)

function compareKeyValues(obj1, obj2) {
  compareKeys(getKeys(obj1), getKeys(obj2))
  compareValues(obj1, obj2, matchedKeys)
  return hasMatch(matchedValues)
}


// GENERATE RANDOM ARRAY

// function to create random whole number between 1 and 10

function randomNumber() {
  return Math.floor(Math.random() * 10) + 1;
}

// function to create random letter (lowercase)

function randomLetter() {
	return String.fromCharCode(97 + Math.floor(Math.random() * 26));
}

// function to create a random word

function wordGenerator() {
	var testWord = ""
	for (j=0; j<randomNumber(); j++) {
		testWord += randomLetter()
  }
  return testWord
}

// function to store random word in an array

function arrayGenerator(numberOfElements) {
	var testArr = []
	for (i=0; i<numberOfElements; i++) {
		testArr.push(wordGenerator())
	}
  return testArr
}

// DRIVER CODE

console.log(findLongest(['long string', 'longest string', 'longer string']))
console.log(findLongest(['I\'m the first element', 'yeah, it is', 'short']))

console.log(compareKeyValues(obj1, obj2))
console.log(compareKeyValues(obj2, obj3))

while (i<11) {
  var arr = arrayGenerator(i)
  console.log(arr)
  console.log(findLongest(arr))
  i++
}