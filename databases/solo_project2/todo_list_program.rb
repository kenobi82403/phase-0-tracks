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
    name VARCHAR(255) NOT NULL
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


class TodoList
  attr_reader :name, :list, :db
  
  def initialize(name, db)
    @name = name
    @list = db.execute("
      SELECT item
      FROM items
      INNER JOIN owners
      ON items.owner_id = owners.id;
    ")
    @db = db
    create_owner(@name)
    # p @list.class
    true
  end
  
# Add item to list
  def add_item(item)
    @list << item
    print_list(@list)
  end

# Remove item from list
  def remove_item(index_to_rm)
    item_to_rm = @list[index_to_rm-1]
    temp_list = []
    @list.each do |item|
      if item != item_to_rm
        temp_list << item
      end
    end
    @list = temp_list
    print_list(@list)
  end

# Update item on list
  def update_item(index_to_update, new_item)
    item_to_update = @list[index_to_update-1]
    @list.map! do |item|
      if item == item_to_update
        item = new_item
      else 
        item
      end
    end
    print_list(@list)
  end  

# Print List
  def print_list(list)
   puts "Current List:"
   if(@list.length < 1) 
     puts "Good job! You have no items on your list"
   else 
     for i in 0...@list.length
       puts "#{i+1}: #{@list[i]}"
     end
   end
  end

private

  def create_owner(name)
    @db.execute("
        INSERT INTO owners (name)
        VALUES (?)
      ", [name])
  end
  
  def retrieve_items()
    
  end

end

# USER INTERFACE
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

list = TodoList.new('kendy', db);