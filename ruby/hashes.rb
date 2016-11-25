# In phase-0-tracks/ruby/hashes.rb, pseudocode and write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).

# Your keys should be symbols unless you find that you need a string for some reason -- usually only when spaces or other "user friendly" formatting are needed (as in the case of using someone's full name as a hash key). Basically, symbols are simpler for programmers to use, and readable enough by technical folks to be used in place of strings most of the time.

# Your program should ...

# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered all of the questions.
# Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
# Print the latest version of the hash, and exit the program.

# initiate empty hash for the following field
client_information = {
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
  children: {
    has_children: nil,
    children_age_sex: []
  },
  # favorite colors - array
  favorite_colors: [],
  # budget - hash
    # lower, higher - number
  budget: {
    lowest: nil,
    highest: nil
  },
  # decoration theme(s) - array
  decoration_theme: []
}


#get input from client for

# full name
# address
# telephone number
# email 
# age
# number of children 
# pets?
# is additional lighting needed?
# if yes, which room?
# what is lower bound of your budget?
# what is the highest bound of your budget?
# Enter favorite colors.. type done when finished
# Decoration theme
