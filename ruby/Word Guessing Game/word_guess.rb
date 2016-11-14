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
If the letter is correct, delete the dash in the new array at the place of the letter
in the origina word array. Place the guessed letter into the new array at the same index as in the
	original array. Display the new array, now with the correct letter showing.


	
=end


class WordGame
	attr_reader :wrong_letters, :guesses_left, :guess_limit_reached, :game_over
	attr_accessor :guess_limit_reached, :game_over, :guesses_left 

	def initialize(word)
		@word = word.split("") 
		@hidden_word = Array.new(@word.length, "_")
		@wrong_letters = []
		@guess_limit = (@word.length + 3)
		@guesses_left = (@guess_limit - @wrong_letters.length)
		@guess_limit_reached = false 
		@game_over = false 
	end

	def compare_letter(letter)
		if @word.include?(letter)
			change_letter(letter)
			win_game
		elsif @wrong_letters.include?(letter)
			puts "You have already guessed that letter"
		else
			puts "Letter not found."
			@wrong_letters << letter 
			lose_game
			puts "You have #{@guesses_left} left!"
			@guess_limit - 1
		end
	end 

	def change_letter(letter)
		letter_indices = @word.each_index.select{ |n| @word[n] == letter }  # <--gets the index of each matching letter
		letter_indices.each { |x| @hidden_word.delete_at(x) }  # <--deletes each dash at the corresponding index using iteration of letter_indices 
		letter_indices.each { |x| @hidden_word.insert(x, letter) }  #<--inserts corect letter at each index of corresponding letter_indices
		puts @hidden_word.join
	end

	def lose_game
		if @wrong_letters.length == @guess_limit
			@guess_limit_reached = true
			puts "Sorry, loser. Game over"
		else
			@game_over = false 
		end
	end

	def win_game
		if @hidden_word == @word 
			@game_over = true
			puts "Amazing!"
			exit
		else
			@game_over = false
		end
	end
end

puts "User 1, enter a word for another user to guess:"
word = gets.chomp

word = WordGame.new(word) 

until word.game_over
puts "User 2, enter a letter:"
guessed_letter = gets.chomp
word.compare_letter(guessed_letter)
end

=begin
	
I'm not sure why some words work while others don't. For example, "apple" and "try" work, but "test" and "mississippi" dont. I've spent
nearly a day and a half to get to this point and the deadline is less than an hour away so I am stopping while it works half the time. I also
was not able to devote enough time to the rspec file. Testing in rspec seemed challenging when working with so many conditional statements as 
opposed to the simple input/output of basic methods.
	
end

