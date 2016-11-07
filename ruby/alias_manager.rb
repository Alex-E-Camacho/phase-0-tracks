def name_changer(input)
	input = input.split(" ")
	first_name = input[0].split("")
	last_name = input[1].split("")
	# input.map! do |name|
	# 	 first_name.shuffle.join("")
	# 	 last_name.shuffle.join("")
	# end
	new_name = "#{first_name.reverse.join("")} #{last_name.reverse.join("")}"
	new_name.split.map(&:capitalize).join(" ")
end 

name_bank = []
original_name_bank = []

until name_bank[-1] == "quit"
puts "Enter first and last name (type 'quit' when done)."
name = gets.chomp
original_name_bank.push(name)
	if name != "quit"
	name = name_changer(name)
	puts "The new name is #{name}." 
	name_bank.push(name) 
	#p name_bank
	else
		 name_bank.push(name)
		 #p "Your secret names are #{name_bank}."
	end 
end


index = 0
until index == (original_name_bank.length - 1)
p "#{name_bank[index]} is actually #{original_name_bank[index]}."
index += 1
end


=begin 

READ: This was my attempt at changing the name by vowels and consonants. My trouble was in trying to combine then to keep my code DRY
and then creating a method that would iterate through each inputed name. 


# Establish the vowels/consonants
# Turn vowels/consonants into array 
# Take argument, compare it with each value at each index 
# def vowel_change(letter)
# 	vowel = "aeiou"
# 	vowel_array = vowel.split("")
# 	index = 0
# 	until letter == vowel_array[index]
# 		vowel_array[index += 1] 
# 	end
# 	if letter == vowel_array[4]
# 		letter = vowel_array[0]
# 	else
# 		letter = vowel_array[index + 1] 
# 	end
# end

# def consonant_change(letter)
# 	consonant = "bcdfghjklmnpqrstvwxyz"
# 	consonant_array = consonant.split("")
# 	index = 0
# 	until letter == consonant_array[index]
# 		consonant_array[index += 1] 
# 	end
# 	if letter == consonant_array[-1]
# 		letter = consonant_array[0]
# 	else
# 		letter = consonant_array[index + 1] 
# 	end
# end

=end 