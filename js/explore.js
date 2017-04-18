// input: string. output: string reversed
// iterate through the string chars and add them to an output
function reverse(str) {
	var output = ''
	for (i=0; i<str.length; i++) {
		output = str[i] + output
	}
  return output
};

var reverseExample = reverse("This is my example string");

if (1 == 1) {
  console.log(reverseExample)
};