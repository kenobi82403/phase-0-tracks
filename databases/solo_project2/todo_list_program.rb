require 'sqlite3'
require 'faker'

class TodoList
  attr_reader :name, :list

  def initialize(name)
    @name = name
    @list = []
  end
  
# Add item to list
  def add_item(item)
    @list << item
    print(@list)
  end

# Update item on list
  def update_item(item)
    temp_list = []
    @list.each do |index|
      if index != item
        new_array << index
      end
    end
    @list = temp_list
    print(@list)
  end  

# Remove item from list
  def remove_item(item_to_rm)
    temp_list = []
    @list.each do |item|
      if item != item_to_rm
        temp_list << item
      end
    end
    @list = temp_list
    print(@list)
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

