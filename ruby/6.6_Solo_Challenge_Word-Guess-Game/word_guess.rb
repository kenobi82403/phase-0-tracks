# DESIGN

  # class for WordGuessGame
class WordGuessGame
  # Getter method on instance variable secret_word
  # Getter and Setter method on instance variable guess_remaining and is_over

  # Instance method to initialize
  #     input: a string
  #     steps: 
  #         1). Instance variable 'secret_word' equal to the string input removing all white spaces front and end of the word
  #         2). Instance variable 'guess_remaining' equal to length of the secret_word by calling the length method on the string
  #         2). Instance variable 'guess_history' equal to length of the secret_word by calling the length method on the string
  #         3). Instance variable 'is_over' equal to false
  #         4). Instance variable 'word puzzle' equal to underscores equal to the length of the word will need to turn secret word to array and call a join method on it to separate by spaces
  #     output:  a string

  # Instance method to guess letter 
  #     input: a letter string
  #     steps: 
  #         1). IF letter was not guessed 
  #                 - enter the letter to the 'guess history' instance variable
  #                 - decrease guess_remaining by 1
  #         2). Iterate over the secret word using string#times method
  #                 - convert secret word to an array by using a split method
  #                 - check if each array value equals to the letter, if so, use that same index number to update the word puzzle result
  #         3). check IF 'word puzzle' equals to 'secret word' 
  #                 'Great job! You've won'
  #                 if not, check IF we still have any more guesses? If no more 
  #                     set is_over to true
  #     output:  a string

  # Instance method to print current state
  # input: None
  # steps: 
  #     1). divider to set it apart from other outputs
  #     2). puts on the current state of the word puzzle
  # output:  a string
end

# USER INTERFACE / DRIVER CODES