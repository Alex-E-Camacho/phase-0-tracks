require 'sqlite3'

db = SQLite3::Database.new("shopping_list.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS list(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	gift VARCHAR(255),
	price INTEGER
	)
SQL

db.execute(create_table_cmd)

def add_name(db, new_name)
	db.execute("INSERT INTO list (name) VALUES (?)", [new_name])
end

def add_gift(db, new_gift, list_id)
	db.execute("UPDATE list SET gift=? WHERE id=?", [new_gift, list_id])
end

def add_price(db, item_price, list_id)
	db.execute("UPDATE list SET price=? WHERE id=?", [item_price, list_id])
end

def delete_row(db, list_id)
	db.execute("DELETE FROM list WHERE id=?", [list_id])
end

# def update_price(db, new_price, list_name)
# 	db.execute("UPDATE list SET price=? WHERE name=?", [new_price, list_name])
# end

# def update_gift(db, new_gift, list_name)
# 	db.execute("UPDATE list SET gift=? WHERE name=?", [new_gift, list_name])
# end

def show_list(db)
	current_list = db.execute("Select * FROM list")
	current_list.each do |row|
	puts "ID: #{row['id']} | #{row['name']} | #{row['gift']} | #{row['price']}"
	end
	puts "---------------------------"
end
#add_name(db, "john henry")

puts "Initializing Holiday Shopping List"

loop do

	puts "Would you like to:"
	puts "1. Add new name(s) to the list"
	puts "2. Add/change a gift for a name on the list"
	puts "3. Add/change a price to a gift on the list"
	puts "4. Remove someone from the list"
	puts "5. Show the list"
	puts "6. Exit"
	puts "---------------------------"
	puts "Please type the number of the option you've chosen:"
	option = gets.chomp.to_i

	case option

	when 1
		 puts "Please enter the name of the gift recipeint(s). Type 'done' when finished adding names."
		 new_name = gets.chomp
		 if new_name != 'done'
		 	add_name(db, new_name)
		 	puts "#{new_name} has been added to the list."
		 	show_list(db)
		 else name == 'done'
		 	show_list(db) 
		 end

	when 2
		puts "Please type the ID number of the person you would like to add (or change) a gift to."
		show_list(db)
		id_num = gets.chomp.to_i
		puts "Please enter the gift."
		new_gift = gets.chomp
		add_gift(db, new_gift, id_num)
		puts "#{new_gift} has been added."
		show_list(db)

	when 3
		puts "Please type the ID number of the person whose gift you'd like to add (or change) a price to."
		show_list(db)
		id_num = gets.chomp.to_i
		puts "Please enter the gift price, ommiting the $ symbol."
		gift_price = gets.chomp.to_i
		add_price(db, gift_price, id_num)
		puts "#{gift_price} has been added."
		show_list(db)

	when 4
		puts "Please type the ID number of the person you would like to remove from the list."
		show_list(db)
		id_num = gets.chomp.to_i
		delete_row(db, id_num)
		show_list(db)

	when 5
		show_list(db)
	when 6
		break
	else
		puts "Invalid input. Please type the number of the action you'd like to perform."
	end

end