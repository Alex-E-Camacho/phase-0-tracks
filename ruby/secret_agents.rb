 #index = 0 

def encrypt(x)
 	index = 0
 	while index < x.length
 		if x[index] == "z"
 			x[index] = "a"
 		else 
   			x[index] = x[index].next
   		end
   		index += 1
   	end
   	return x 
end

#puts encrypt(password)

def decrypt(x)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	index = 0 
	while index < x.length
	# Take the letter from x at index, find in alphabet
	letter = x[index] 
	# Once found, get it's index in the alphabet, subtract 1 
	new_index = alphabet.index(letter) - 1 
	# Find the letter in alphabet at new index
	alphabet[new_index]
	# Reassign letter at that position in x to found letter 
	x[index] = alphabet[new_index]
	index += 1 
	end
	return x 
end


#puts "Please enter password:"
#password = "abc"
#Ask if user wants to encrypt or decrypt a password


puts "Do you wish encrypt or decrypt a password?"
input = gets.chomp.downcase

#Ask for password
puts "Enter password:"
password = gets.chomp

# Conditions the request operation, prints the result to the screen, and exits
if input == "encrypt"
	puts encrypt(password)
end

if input == "decrypt"
	puts decrypt(encrypt(password))
end