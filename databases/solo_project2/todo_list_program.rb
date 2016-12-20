# require gems
require 'sqlite3' # for sql database
require 'faker'  # help create fake datas

# create SQLite3 database for todo program
db = SQLite3::Database.new("todo.db")

# string delimiter for creating table schemas
# one to many relationship. One owner can have many items.
owner_table = <<-SQL
  CREATE TABLE IF NOT EXISTS owners
  (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
  );
SQL

items_table = <<-SQL
  CREATE TABLE IF NOT EXISTS items
  (
    item VARCHAR(255),
    owner_id INT REFERENCES owners(id)
  );
SQL

# create a todo program if not already created
db.execute(owner_table)
db.execute(items_table)

#     @pk = db.execute("
#       SELECT id
#       FROM owners
#       WHERE name = ?;
#     ", [@name])[0]
  
# Add item to list
def add_item(db, item, pk)
    db.execute("
      INSERT INTO items
      VALUES(?, ?);
    ", [item, pk])
end

# Remove item from list
def remove_item(db, index_to_rm, pk)
  list = retrieve_items(db, pk)
  item_to_rm = list[index_to_rm-1]
  db.execute("
      DELETE FROM items
      WHERE item = ?
    ", [item_to_rm])  
end

# Update item on list
def update_item(db, index_to_update, new_item, pk)
  list = retrieve_items(db, pk)
  item_to_update = list[index_to_update-1]
  db.execute("
      UPDATE items
      SET item = ?
      WHERE item = ?
    ", [new_item, item_to_update])  
end  

# Print List
def print_list(db, pk)
 list = retrieve_items(db, pk)
 puts "Current List:"
 if(list.length < 1) 
   puts "Good job! You have no items on your list"
 else 
   for i in 0...list.length
     puts "#{i+1}: #{list[i]}"
   end
 end
end

def create_profile(name, password, db)
  db.execute("
      INSERT INTO owners (name, password)
      VALUES (?, ?);
    ", [name, password])
end

def retrieve_items(db, pk)
  db.execute("
    SELECT item
    FROM items
    WHERE owner_id = ?;
  ", [pk])
end

# USER INTERFACE

# create_profile("kendy", "password", db)
# add_item(db, "take out trash", 1)
# add_item(db, "mop the floor", 1)
# add_item(db, "wash the dishes", 1)
# remove_item(db, 2, 1)
# update_item(db, 2, "buy milk", 1)
# update_item(db, 4, "clean the house", 1)


# puts "Welcome to my to do list 1.0!"
# puts "What would you like to do?"
# puts "N - new list"
# puts "A - access a list (currently not available)"
# userinput = gets.chomp.downcase

# if userinput == "n"
#   puts "Great! What is your name?"
#   user_name = gets.chomp.downcase
#   list = TodoList.new(user_name)
#   puts "Thanks #{user_name.capitalize}! Your list is initalized"
# end

# p list

# list = TodoList.new('kendy', 'password', db);
# list.add_item("wash dishes");
# list.add_item("take trash out");
