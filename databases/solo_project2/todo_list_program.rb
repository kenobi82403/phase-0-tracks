# require gems
require 'sqlite3' # for sql database
require 'faker'  # help create fake datas

# create SQLite3 database for todo program
db = SQLite3::Database.new("todo.db")

# string delimiter for creating table schemas
# one to many relationship. One owner can have many items.
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS owners
  (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  );
  
  CREATE TABLE IF NOT EXISTS items
  (
    item VARCHAR(255),
    owner_id INT REFERENCES owners(id)
  );
SQL

# create a todo program if not already created
db.execute(create_table_cmd)


class TodoList
  attr_reader :name, :list

  def initialize(name)
    @name = name
    @list = []
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

end

# USER INTERFACE
