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
  children: {},
  # favorite colors - array
  favorite_colors: [],
  # budget - hash
    # lower, higher - number
  budget: {},
  # decoration theme(s) - array
}

# method to request children info
def request_children client
  puts "Do you have children? (true or false)"
  # method to request more info from child if answer to has_children is true in regards to sex and age
  def request_children_agesex client
    # set up new key and set it as an array
    client[:children][:child_age_sex] = []
    # assign it to children to make it less DRY
    children = client[:children][:child_age_sex]
    # ask how many children to determine how many times to loop
    puts "how many children do you have?"
    child_num = gets.chomp.to_i
    # loop to the # of children, ask user for child age and sex
    for each_child in 1..child_num
      temp_array = []
      puts "What is the age of child ##{each_child}"
      temp_array.push(gets.chomp)
      puts "What is the sex of child ##{each_child}"
      temp_array.push(gets.chomp)
      # push it to client array
      children.push(temp_array)
    end
  end
  # loop to ensure correct response is received
  while true
    user_input = gets.chomp.downcase  # to ensure all response are lowercase
    # conditional, set boolean to has_children if met.
    if user_input == "true"
      # if true fire up request_child method
      client[:children][:has_children] = true
      request_children_agesex(client)
      break
    elsif user_input == "false"
      client[:children][:has_children] = false
      break
    else
      # loop again if desire response not received
      client[:children] = {}
      puts "Please only answer with true or false."
    end
  end
end

# method to request fav color
def request_favorite_color client
  client[:favorite_colors] = []
  puts "What is your favorite color? (type 'exit' when done)"
  # loop, ask for favorite colors until user type exit"
  loop do
    user_input = gets.chomp.downcase
    break if user_input == "exit"
    client[:favorite_colors].push(user_input)
    puts "What is your favorite color? (type 'exit' when done)"
  end
end

# method to request client budget
def request_budget client
  # ask for lowest budget and push to array
  puts "What is your lowest budget?"
  client[:budget][:lowest] = gets.chomp.to_i
  # ask for highest budget and push to array
  puts "What is your highest budget?"
  client[:budget][:highest] = gets.chomp.to_i
end

# method to print client detail 
def print_client_detail client
  puts
  puts "Client Detail:"
  client.each { |key, value|
    if value != nil && 
       value != "" && 
       value != 0 && 
       value != [] && 
       value != {}
      puts "#{key}: #{value}"
    end
  }
end

# method to update keys
def update_client client
  loop do 
    puts "Which key would you like to update? type 'exit' when done"
    user_input = gets.chomp.downcase.to_sym

    case user_input
    when :children
      request_children(client)
    when :favorite_colors
      request_favorite_color(client)
    when :budget
      request_budget(client)
    when :exit
      puts 'Exiting update program...'
      break
    else 
      if !client[user_input]
        puts "I'm not sure what #{user_input} is.."
      else
        puts "What value would you like for #{user_input}?"
        client[user_input] = gets.chomp
      end 
    end
    print_client_detail(client)
  end
end


#get input from client for
# full name
puts "What is the full name of your client?"
client[:name] = gets.chomp
# age
puts "How old is your client?"
client[:age] = gets.chomp
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
request_children(client)
# favorite colors - array
request_favorite_color(client)
# budget lower, higher - number
request_budget(client)
# print client detail
print_client_detail(client)

puts
while true
  puts "Would you like to update any keys? (y/n)"
  user_input = gets.chomp.downcase
  if user_input == "y"
    update_client(client)
  elsif user_input == "n"
    puts "Thanks for using the program! Have a nice day."
    break
  else
    puts "I'm not sure what #{user_input} is.."
  end
end