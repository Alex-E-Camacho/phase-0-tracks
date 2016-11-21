// **COMMENTS**

// I acoomplished release 0. However, release 1 was very troublesome. I believe my logic was sound but a very pesky
// error kept coming up. It would say that there was a  missing ) but when I would add it anywhere, it would then say
// that there was an extra ). I commented out my original code and began a new one hoping to use the autofill feature
// of Sublime to keep my paranthesis and curly brackets matched correctl. However, it still kept coming up as the wrong
// number of unexpected/mising tokens. I moved on to the final release and began by trying to make two functions that
// would make a random name of random length, and then fill that into an array. However, I ran out of time as the assignment
// is due in a few minutes. This was about 6 hours of work.

//--------------

// **RELEASE 0**

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

// ---------------

// **RELEASE 1**

// Go through each property/value pair in one array, 
// campare it to each property/value pair in another
// Create conditional statement that if one property is equal to another AND
// the property's value is equal to the other's property value, return true

// function compareObject(obj1, obj2) {
// 	obj1.forEach(function(property, value) {
// 		if (obj1[property][value] == obj2[property][value]) {
// 			return true;
// 		} else {
// 			return false;
// 		}
// }

function compareObj(obj1, obj2) {
	obj1.forEach(function(property, value) {
		if (obj1[property][value] == obj2[property][value]) {
			return true;

		}
	})
}

// -------------

// **RELEASE 2**

function randomArr(num) {
	var newArray = new Array[num].fill(randName);

}

function randName(num) {
	randNum = Math.floor(Math.random() * 9);
	charArr = ["a", "b", "c", "d", "e", "x", "y", "z"];
}

// ----------------

// **DRIVER CODE**

var testArray = ["apple", "pie", "sundae", "ice cream"];

var shoeBrands = ["Nike", "Reebok", "Adidas", "Keds", "Timberland"]

longestWord(testArray);

longestWord(shoeBrands);

var person1 = {name: "Alex", age: 33};
var person2 = {name: "Aly", age: 28}

console.log(compareObj(person1, person2))




