# Create the fields and prompts that the interior designer will populate
# Convert certain strings to integers and booleans
puts "Enter the client's name:"
client_name = gets.chomp

puts "What is the client's age?"
age = gets.chomp.to_i

puts "How many children does the client have?"
num_of_children = gets.chomp.to_i

puts "What kind of decor theme does the client want?"
theme = gets.chomp

puts "How many rooms does the client want decorated?"
num_of_rooms = gets.chomp.to_i 

puts "Is this the client's first time using us? (Type 'y' for yes or 'n' for no)"
first_time = gets.chomp.downcase

# Convert string into a boolean

	if first_time == "y" || "'y'"
		first_time = true
	else
		first_time = false
	end

# Use data to populate the hash

 client_info = {

	name: client_name,
	age: age,
	rooms: num_of_rooms,
	children: num_of_children,
	theme: theme,
	first_time: first_time,

}

p client_info

