# An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. Any space character should remain a space character -- no change made.

# create a method call encrypt that accepts a string input that we will call code
def encrypt code
  puts
  puts "Encryption process began.."
  # take care of edgecase if person enter a other than lowercase
  code = code.downcase
  puts
  puts "Your input is: #{code}"
  # create a result variable and set it to ""
  result = "Your Output is: "
  # create a counter variable and set it to 0
  i = 0


  # create a loop, we will use a while loop, the code within the while loop will run while the counter is less than the length of the code
  while i < code.length
    # if letter is z give it a value of a
    if code[i] === "z"
      result += "a"
    # if statement to test if the letter is not a space
    elsif code[i] != " " 
      # if so call .next on each letter on each iteration and save it to a result variable
      result += code[i].next 
    else
      # if not just add the space to result
      result += code[i]
    end # close the if statement
    
    # increment the counter to avoid infinite loop
    i += 1

  end # close the loop

  # return output
  puts result
  puts
  return result

end # close the method

# ask user to input a code to encrypt
puts "Please enter a code to encrypt"
encrypt(gets.chomp)

# A decrypt method that reverses the process above. Note that Ruby doesn't have a built-in method for going backward one letter. How can you find out where a letter is in the alphabet, then access the letter right before it? Hint: In the IRB session above, you learned how to ask a string for the index of a letter. "abcdefghijklmnopqrstuvwxyz" counts as a string.



# Create a method call decrypt that takes param of code
def decrypt code
  puts
  puts "Decryption process began.."
  # take care of edgecase if person enter a other than lowercase
  code = code.downcase
  puts
  puts "Your input is: #{code}"
  # create a result var to keep track of result
  result = "Your Output is: "
  # create a counter var for while loop set it to 0
  i = 0
  # create a key var to hold the 28 english character use in while loop
  key = "abcdefghijklmnopqrstuvwxyz"


    # create a while loop, run while counter is less than length of code
    while i < code.length
      # if statement, if not space then run code
      if code[i] != " "
        # find the index of the current letter in the 'key' and subtract one then save to temp var
        codeIndex = key.index(code[i]) - 1
        # save to result
        result += key[codeIndex]
      else # else just add to result
        result += code[i]
      end # close if statement

      # increment counter to prevent infinite loop
      i += 1
    end # Close while loop

  # return output
  puts result
  puts
  return result
end # Close the method

# ask user to input a code to decrypt
puts "Pleaes enter a code to decrypt"
decrypt(gets.chomp)

#Release 3: Test Your Code
encrypt("abc") # should return "bcd"
decrypt("bcd") # should return "abc"
encrypt("zed") # should return "afe"
decrypt("afe") # should return "zed"