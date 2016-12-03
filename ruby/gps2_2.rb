

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create an empty hash
  # turn string into an array by separating on " "
  # iterate over array using add method to add values to hash
  #   set default quantity within loop
  # print the list to the console using print method
# output: hash
def create_list(list_of_items)
  list = {}
  items = list_of_items.split(' ')
  items.each do |item|
    list[item] = 1
    # add_item(list,item)
    # removed because add_item method also prints.
  end
  print_list(list)
end

# Method to add an item to a list
# input: hash name, item name and optional quantity default to 1
# steps: IF item is on list, reject
  # pass in new item and quantity to the list
  # print the list to the console using print method
# output: hash

def add_item(list, item, quantity=1)
  !list[item] ? 
    list[item] = quantity :
    (puts "#{item} is on list already!"
    puts "Use update_item to adjust quantity")
  # if list[item]
  #   list[item] = quantity
  # else
  #   puts "#{item} is on list already!"
  #   puts "Use update_item to adjust quantity"
  # end
  print_list(list)
end

# Method to remove an item from the list
# input: hash name, item name
# steps: check IF item is on list. 
  # if it is, remove item from list
  # if not, prompt use item not on list
  # print the list to the console using print method
# output: hash

def remove_item(list, item)
  list.delete(item) { |item| puts "#{item} is not on the list!"}
  # if list[item] != nil
  #   list.delete(item)
  # else
  #   puts "#{item} is not on the list!"
  # end
  print_list(list)
end

# Method to update the quantity of an item
# input: hash, item name, new quantity
# steps: check IF item is on list. 
  # if it is, update quantity
  # if not, prompt use item not on list
  # print the list to the console using print method
# output: hash

def update_item(list, item, new_quantity)
  if list[item]
    list[item] = new_quantity
  else
    puts "#{item} is not on the list!"
    puts "Use add_item to add item. duh."
  end
  print_list(list)
end

# Method to print a list and make it look pretty
# input: hash
# steps: print "Here's what's on your (hashname) list"
  # iterate over the hash. print for each hash:
  # "quantity item" 
  # one per line
  # return the list
# output: hash

def print_list(list)
  puts "Here's what's on your list"
  list.each do |item, quantity|
    puts "#{quantity} #{item}"
 end
 list
end


# TEST CODE

joes_list = create_list("Bleach Oatmeal Flour")
#test items on list
# puts joes_list.has_key? "Oatmeal"
#test default quantity
# puts joes_list["Flour"] == 1

add_item(joes_list,"Lemonade",2)
add_item(joes_list,"Tomatoes",3)
add_item(joes_list,"Onions")
add_item(joes_list,"Ice Cream",4)
# test add and default quantity
# puts joes_list["Onions"] == 1

#test added items that already exist
# add_item(joes_list,"Lemonade",9)

remove_item(joes_list,"Lemonade")
# test remove_item
# puts joes_list.has_key?("Lemonade") == false

# test removing item that doesn't exist
remove_item(joes_list,"PIZZA")

update_item(joes_list,"Ice Cream",1)
# test update_item
# puts joes_list["Ice Cream"] == 1

# test updating item that doesn't exist
# update_item(joes_list,"PIZZA",1)

puts "_" * 80
print_list(joes_list)


#### REFLECTION ####

# Driver: Joe Harrow
# Navigator: Kendy Ng
# Guide: Clint Mullins

# What did you learn about pseudocode from working on this challenge?  I've learned that if we spend time on actually thinking and writing the whole program design and logic out in plain English, it makes coding the actual program a lot more easier, efficient, and less buggy. Pseudo code FTW!

# What are the tradeoffs of using arrays and hashes for this challenge? Originally I thought of using an Array, however the trade off on using an array because of how it is naturally ordered. However, after learning more about the requirements, an Hash is more appropriate because if we are to use an Array, it would take additional steps to perform certain methods like add, delete, and update. The reason is probably because of how Arrays and Hash are designed. For an Array, we would need to iterate over the array n times just to find the correct item we're looking for while Hash on the other hand, it is much faster to lookup because of its key/value pair feature. 

# What does a method return? A method returns a value. Either it will return the value of the last code in the method or returning explicitly where the user tells it to.

# What kind of things can you pass into methods as arguments? You can pass any objects in the methods as arguments (e.g. strings, hash, arrays, integers, block, Procs, methods etc.)

# How can you pass information between methods? You can invoke the method inside another method or pass in as an argument to return the information.

# What concepts were solidified in this challenge, and what concepts are still confusing? I would say I am much more comfortable with writing pseudocode after this challenge, the concept that is still confusing would be passing in methods in as an argument. Coming from learning javascript first, javascript allows you to pass in a method as a callback. I'm guessing the equivalent of that would be a proc/block? I will be digging into the materials more to learn more about it.