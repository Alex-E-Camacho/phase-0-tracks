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
Take the letter inputed and check if it is in the word array
If the letter is correct, place it into the new array at the same index as in the
	original array. Display the new array, now with the correct letter showing.


	
=end


class WordGame

	def initialize(word)
		@word = word.split("") 
		@hidden_word = Array.new(@word.length, "_")
		@guess_count = word.length
		@guess_limit_reached = false 
	end

	def compare_letter(letter)
		index = 1
		if letter == @word[index]
			@hidden_word.delete_at(@word.index(letter))
			@hidden_word.insert(@word.index(letter), letter)
			print @hidden_word
		else
			print @hidden_word
		end
	end 
	#If guessed_letter == @word[index]
		# then replace that letter in the matching index of the dashed_array 
		# print the updated dashed_array
		# 
end

puts "Enter a word:"
word = gets.chomp

word = WordGame.new(word) 

puts "Enter a letter"
guessed_letter = gets.chomp

word.compare_letter(guessed_letter)

