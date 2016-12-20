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

def auth_user(name, password, db)
  pass = db.execute("
       SELECT id
       FROM owners
       WHERE name = ? 
       AND password = ?
    ", [name, password])[0]

  if !pass
    false
  else
    pass[0]
  end

end

p auth_user("kendy", "password", db)

# puts "Welcome to my to do list program 1.0!"

# loop do
#   puts "" 
#   puts "What would you like to do?"
#   puts "1 - create a new list"
#   puts "2 - access an existing list"
#   puts "3 - exit the program"
#   puts "_" * 50
#   puts ""

#   user_input = gets.chomp.to_i

#   case user_input
#   when 1
#     puts "Please enter a user name"
#     user_name = gets.chomp.downcase
#     puts "Please enter a password"
#     user_pw = gets.chomp.downcase
    
#     create_profile(user_name, user_pw, db)

#     pk = db.execute("
#         SELECT 
#       ")
#     puts "Thanks #{user_name.capitalize}! Your list is initialized!"
#     puts ""
#   when 2

#   when 3
#     break
#   end

#   loop do
#     puts ""
#     puts "What would you like to do next?"
#     puts "1 - add an item to your list"
#     puts "2 - remove an item from your list"
#     puts "3 - update an item on your list"
#     puts "4 - print list"
#     puts "5 - return to the main menu"
#     puts ""

#     user_action = gets.chomp.to_i
#     case user_action
#       when 1
#         # add_item(db, "take out trash", 1)
#       when 2
#         # remove_item(db, 2, 1)

#       when 3
#         # update_item(db, 2, "buy milk", 1)

#       when 4
#         # print_list(db, pk)
#       when 5
#         break
#       else
#         "Invalid option.."
#     end
#   end

# end



