// Go through each item in an array and find its length
// Convert those lengths into a new array
// Sort the new array with the largest value at the first spot
// Set a condition that if a word's length in the original array is equal to the first number in the
// 	new array (which will be the largest), it prints that word to the console

function longestWord(array) {
	var numArray = [];
	array.forEach(function(item) {
		numArray.push(item.length)
	})
	return printLongest(array, numArray.sort(sortArray))
}

function sortArray(a,b) {
	return b - a;
}

function printLongest(wordArr, numArr) {
	wordArr.forEach(function(value) {
    if (value.length == numArr[0]) {
    return console.log(value); }
})
}

var testArray = ["apple", "pie", "sundae", "ice cream"];

var shoeBrands = ["Nike", "Reebok", "Adidas", "Keds", "Timberland"]

longestWord(testArray);

longestWord(shoeBrands);