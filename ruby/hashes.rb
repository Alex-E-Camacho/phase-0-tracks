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

puts "Is there any field that needs to be corrected or updated? If not, type 'done'."
update = gets.chomp.to_sym

# Take user input (which becomes a symbol with .to_sym), plug that into the syntax that 
# updates key values 

# hash_name[:key] = "updated value"
# client_info[update] = "correction"

if update == :done
	update = update.to_s 
	p client_info
elsif (update  == :name) || (update == :theme) # <-- I know I can make this more DRY but this works for now!
	puts "Enter correction:"
	correction = gets.chomp
	client_info[update] = correction
	p client_info
elsif (update == :age) || (update == :rooms) || (update == :children)
	puts "Enter number correction:"
	correction = gets.chomp.to_i
	client_info[update] = correction
	p client_info
elsif update == :first_time
	puts "Enter Correction (type 'y' for yes or 'n' for no):"
	correction = gets.chomp
		if correction == "y"
		   correction = true
		elsif correction == "n"
		   correction = false
		end
	client_info[update] = correction
	p client_info
end
		




