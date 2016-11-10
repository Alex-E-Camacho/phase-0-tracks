# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # 1. Define a data structure (hash)
  # 2. Populate new list from input using spaces to indicate new list item (.split) 
  # 3. Using iteration over each array item, use to populate keys in hash table
  # 4. Hash table with strings as keys; default value set to 1
  # 5. Return a hash with populated keys (items) set to a default value of 1 (use print method)
  # 
  # set default quantity (1)
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
grocery_list = {}

def create_list(grocery_list_string)
	grocery_list = {}
	items = grocery_list_string.split(" ")
	items.each do |i| 
		grocery_list[i] = 1
	end
	print_grocery_list(grocery_list)
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: 1. Take string
		 # 2. Assign string to existing hash key
		 # 3. Assign quantity to the value (if the quantity is different than the default)

# output: Updated hash with new items added

def add_item(hash, grocery_list_string, int)
	hash[grocery_list_string] = int 
	print_grocery_list(hash)
end

# Method to remove an item from the list
# input: Hash key 
# steps: 1. Take hash key and make it downcase
		# 2. Remove from original hash
# output: Updated hash with item removied

def remove_item(hash, hash_key)
	hash.delete(hash_key)
	print_grocery_list(hash)
end 

# Method to update the quantity of an item
# input: Hash key, a new integer
# steps: 1. List hash keys
		# 2. Update old integer with new integer
# output: Updated hash with new integer

def update_quantity(hash_name, hash_key, int)
	hash_name[hash_key] = int 
	print_grocery_list(hash_name)
end

# Method to print a list and make it look pretty
# input: Hash with assigned values
# steps: 1. Add breaks after each key/value pair
# output:

def print_grocery_list(hash)
	puts ":::::::::::::"
	puts "Current grocery list:"
	hash.each do |item, qty|
		puts "#{item}: #{qty}"
	end
	puts ":::::::::::::"
end

# Create list

	puts "Please add items to your grocery list"
	items = gets.chomp
	
	grocery_list = create_list(items)

# Update item quantity

	puts "Which item's quanity would you like to update?"
	item_to_update_qty = gets.chomp
	
	puts "What is the new value?"
	new_item_quantity = gets.chomp.to_i 
	
	update_quantity(grocery_list, item_to_update_qty, new_item_quantity)

# Remove item

	puts "Would you like to remove an item? Type item to remove, otherwise type 'no'."
	item_to_remove = gets.chomp.downcase
	
	if item_to_remove == "no"
		print_grocery_list(grocery_list)
	else 
		remove_item(grocery_list, item_to_remove)
		print_grocery_list(grocery_list)
	end

print_grocery_list(grocery_list)