# In phase-0-tracks/ruby/hashes.rb, pseudocode and write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).

# Your keys should be symbols unless you find that you need a string for some reason -- usually only when spaces or other "user friendly" formatting are needed (as in the case of using someone's full name as a hash key). Basically, symbols are simpler for programmers to use, and readable enough by technical folks to be used in place of strings most of the time.

# Your program should ...

# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered all of the questions.
# Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
# Print the latest version of the hash, and exit the program.

# initiate empty hash for the following field
client = {
  # name - string
  name: nil,
  # age - number 
  age: nil,
  # address - string
  address: nil,
  # contact_num - string
  contact_num: nil,
  # contact_email - string
  contact_email: nil,
  # children - hash
    # has children - boolean
    # number_of_children - number 
    # children age - number
  children: nil,
  # favorite colors - array
  favorite_colors: nil,
  # budget - hash
    # lower, higher - number
  budget: nil,
  # decoration theme(s) - array
  decoration_theme: nil
}


#get input from client for
# full name
puts "What is the full name of your client?"
client[:name] = gets.chomp
# age
puts "How old is your client?"
client[:age] = gets.chomp.to_i
# address
puts "What is your client's address?"
client[:address] = gets.chomp
# telephone number
puts "Please enter client's telephone number."
client[:contact_num] = gets.chomp
# email 
puts "Please enter client's email."
client[:contact_email] = gets.chomp
# children 
# children: {
#   has_children: boolean,
#   
# }
# ask if there's children
# if yes then initiate array and ask how many
# loop to the number of children and for each instance, ask for age and sex and push to array
puts "Do you have children? (true or false)"
while client[:children] == nil
  client[:children] = gets.chomp.downcase  
  if client[:children] == "true"
    client[:children] = true
  elsif client[:children] == "false"
    client[:children] = false  
  else
    client[:children] = nil
    puts "Please only input true or false."
  end
end

# favorite colors - array
# loop, ask for favorite colors until user is type exit"

# budget lower, higher - number
# initiate array
# ask for lowest budget and push to array
# ask for highest budget and push to array

# decoration theme - string
# ask for decoration theme

client.each { |key, value|
  if value != nil && value != "" && value != 0
    puts "#{key}: #{value}"
  end
}