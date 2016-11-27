require 'sqlite3'

db = SQLite3::Database.new("shopping_list.db")

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

def add_gift(db, new_gift)
	db.execute("INSERT INTO list (gift) VALUES (?)", [new_gift])
end

def add_price(db, item_price)
	db.execute("INSERT INTO list (price) VALUES (?)", [item_price])
end

def delete_row(db, deleted_name)
	db.execute("DELETE FROM list WHERE name=?", [deleted_name])
end

def update_price(db, new_price, list_name)
	db.execute("UPDATE list SET price=? WHERE name=?", [new_price, list_name])
end

def update_gift(db, new_gift, list_name)
	db.execute("UPDATE list SET gift=? WHERE name=?", [new_gift, list_name])
end
#add_name(db, "john henry")