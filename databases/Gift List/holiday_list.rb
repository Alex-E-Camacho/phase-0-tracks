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

#add_name(db, "john henry")