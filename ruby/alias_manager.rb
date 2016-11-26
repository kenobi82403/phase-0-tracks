# method to get next letter based on the grouping
def next_letter letter, grouping
  if grouping[grouping.index(letter) + 1]  # test if this is not nil
    grouping[grouping.index(letter) +1]  # if not nil then return the next letter
  else 
    grouping[0]   # else revert back to index 0 
  end
end

# method to transform name
def transform_name array
  vowels = 'aeiou'  # variable to store vowels
  consonants = 'bcdfghjklmnpqrstvwxyz'  # variable to store consonants
  
  # iterate through each letter of the array and modified in spot
  array.map! { |letter|
    if vowels.index(letter) # if vowel call next_letter method with vowels grouping
      next_letter(letter, vowels)
    elsif consonants.index(letter) # if consonant call next_letter method with consonants grouping
      next_letter(letter, consonants)
    else # if none of the above, just return the letter
      letter
    end
  }
  
  array.join('')
end

# a method takes string as a param
def generate_alias name
  # convert to array and save to name_array
  name_array = name.downcase  # convert to lowercase
                     .split('') # convert to array
  new_alias = transform_name(name_array) # call transform_name and assign to _alias
  
  # convert back to string and capitalize first letter
  new_alias = name_array.join('')    # convert letters to string
                     .split(' ')  # convert to array by words
                     .reverse # swap first and last name
                     .map! { |word| word.capitalize } # traverse array and capitalize each word in place
                     .join(' ')   # convert back to a string separate each word with a space

  # return new alias
  new_alias
end

# USER INTERFACE

# initiate new hash
alias_record = {}
# welcome message
puts 'Welcome to the new alias generator!'
# infinite loop for program until user type exit
loop do
  # prompt user for input
  puts
  puts "Please input a name or type 'exit' to end program"
  # same input to variable
  user_input = gets.chomp.split(' ').map!{|word| word.capitalize}.join(' ')
  # provide when to break out of loop
  break if user_input.downcase == "exit"
  # call generate_alias method, print result on screen and save result to alias_record with user_input as key and return value as the value
  p alias_record[user_input] = generate_alias(user_input)
end
puts
puts 'Now Exiting........'
puts
puts 'Agent alias record:'
# iterate over hash and print key and values to console
alias_record.each { |key, value|
  puts "#{key} is actually #{value}!"
}
puts
puts 'Thank you for using the new alias generator..Please come back soon!'

