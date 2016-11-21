// Go through each item in an array and find its length
// Convert those lengths into a new array
// Sort the new array with the largest value at the first spot
// Set a condition that if a word's length in the original array is equal to the first number (which will be the largest) in the
// 	new array, it prints that word to the console

function longestWord(array) {
	var numArray = [];
	array.forEach(function(item) {
		numArray.push(item.length)
	})
	return numArray.sort(sortArray)
}

function sortArray(a,b) {
	return b - a;
}

var test_array = ["apple", "pie", "sundae", "ice cream"];

console.log(longestWord(test_array));