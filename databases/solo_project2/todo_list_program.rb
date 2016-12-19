# Write a Ruby program that uses persistent data to make your life better, or makes someone else's life better. Find several opportunities to try something not explicitly shown in the video. Can users create data? Retrieve it? Manipulate it? It's up to you. Push yourself, and decide with integrity when you are finished. Note that you do not need to use classes in this assignment -- keeping a class instance and a database row in sync is a lot of work, so that might be too much to tackle.

# Require SQLite3 gem
# Require faker gem

# Create Class User List
# Reader for array and name attribute

# A method to set the name of the list owner.
# Create an array empty array
# Input: string - user name
# Output: Boolean

# A method to add item to list
#   Input is a string
#   Push item to list array
#   call read method
#   Output: Boolean

# A method to read the list
#   Prints the array on console

# A method to delete item from list
#   Input is an integer
#   Declare temp array
#   Loop through array and copy to new temp array
#     Skip item if it matches integer ( each method)
#   Save temp array to master list array
#   Call read method
#   Output: Boolean

# A method to update item on list
#   Input is an integer and a string
#   Declare temp array
#   Loop through list array and copy to new temp array
#     If matches integer then update item (map bang!)
#   Call read method
#   Output: boolean

# User Interface

# Welcome to program
#   Access an existing list or create a new list

# Test CRUD

# Allow user to create their own profile
# Allow user to create a new list
# Allow user to add item to list
# Allow user to mark complete or incomplete
# Allow user to delete item from list
# Allow user to update item on list


class TodoList
  attr_accessor :get_items

  def initialize(list_arr)
    @get_items = list_arr
  end

  def add_item(item)
    @get_items << item
  end

  def delete_item(item)
    new_array = []
    @get_items.each do |index|
      if index != item
        new_array << index
      end
    end

    @get_items = new_array
  end

  def get_item(index)
    @get_items[index]
  end

end