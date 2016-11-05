# Establish the vowels
# Turn vowels into array 
# Take argument, compare it with each value at each index 
def vowel_change(letter)
	vowel = "aeiou"
	vowel_array = vowel.split("")
	index = 0
	until letter == vowel_array[index]
		vowel_array[index += 1] 
	end
	if letter == vowel_array[4]
		letter = vowel_array[0]
	else
		letter = vowel_array[index + 1] 
	end
end