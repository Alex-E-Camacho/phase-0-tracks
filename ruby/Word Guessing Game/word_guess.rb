# Initialize the game and pass the user input into the initialization 
# Set the guess count limit to the length of the word/array
# Separate each letter of the word into it’s own value
# Take a duplicate guess and count that as a subtraction from the guess count
# Display the current array with the correct guessed letters showing

=begin

Take the user's word. 
Separate the user's word into an array.
Create a new array the same length as the word array. Fill it with dashes.
Ask the other user to enter a letter to guess.
If the letter is correct, place it into the new array at the same index as in the
	original array. Display the new array, now with the correct letter showing.


	
=end


class WordGame

	def initialize(word)
		@word = word.split("")
		@guess_count = word.length
		@guess_limit_reached = false 
	end

	def dash_arr
		dash_array = Array.new(@word.length, "_")
	end
end