# An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. Any space character should remain a space character -- no change made.

# create a method call encrypt that accepts a string input that we will call code
def encrypt code
  # create a result variable and set it to ""
  result = ""

  # create a counter variable and set it to 0
  i = 0

  # create a loop, we will use a while loop, the code within the while loop will run while the counter is less than the length of the code
  while i < code.length

    # within the loop, add an if statement to test if the letter is not a space
    if code[i] != " " 
      # if so call .next on each letter on each iteration and save it to a result variable
      result += code[i].next 
    else
      # if not just add the space to result
      result += code[i]
    end # close the if statement
    
    # increment the counter to avoid infinite loop
    i += 1

  end # close the loop

  # output
  return p result
end # close the method

# ask user to input a code to encrypt
puts "Please enter a code to encrypt"
encrypt(gets.chomp)

# A decrypt method that reverses the process above. Note that Ruby doesn't have a built-in method for going backward one letter. How can you find out where a letter is in the alphabet, then access the letter right before it? Hint: In the IRB session above, you learned how to ask a string for the index of a letter. "abcdefghijklmnopqrstuvwxyz" counts as a string.