// Take a word and get each letter's position in the word
// Get the word's character length 
// Starting at the first letter, change it to -1, the second letter to -2, etc., until the word's length is reached
// Print the new word

function reverse(word) {
	var wordLetters = word.split('');
	var reverseWord = [];
	wordLetters.forEach(function(letter){
		reverseWord.unshift(letter)
	});		
		return reverseWord.join('');
}

var favePie = reverse("apple")
var longState = reverse("mississippi")

if (1 == 1) {
	console.log(favePie);
} else {
	console.log("ayy");
}
