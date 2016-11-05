# Establish the vowels/consonants
# Turn vowels/consonants into array 
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

def consonant_change(letter)
	consonant = "bcdfghjklmnpqrstvwxyz"
	consonant_array = consonant.split("")
	index = 0
	until letter == consonant_array[index]
		consonant_array[index += 1] 
	end
	if letter == consonant_array[-1]
		letter = consonant_array[0]
	else
		letter = consonant_array[index + 1] 
	end
end