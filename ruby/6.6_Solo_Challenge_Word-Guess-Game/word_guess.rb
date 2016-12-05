# DESIGN

  # class for WordGuessGame
class WordGuessGame
  # Getter method on instance variable secret_word
  attr_reader :secret_word, 
              :guess_allowed,
              :guess_count,
              :guess_history, 
              :is_over, 
              :puzzle

  # Instance method to initialize
  #     input: a string
  #     steps: 
  #         1). Instance variable 'secret_word' equal to the string input removing all white spaces front and end of the word
  #         2). Instance variable 'guess_remaining' equal to length of the secret_word by calling the length method on the string
  #         2). Instance variable 'guess_history' equal to length of the secret_word by calling the length method on the string
  #         3). Instance variable 'is_over' equal to false
  #         4). Instance variable 'word puzzle' equal to underscores equal to the length of the word will need to turn secret word to array and call a join method on it to separate by spaces
  #     output:  a string
  def initialize(secret_word)
    @secret_word = secret_word
    @guess_allowed = secret_word.length
    @guess_count = 0
    @guess_history = []
    @is_over = false
    @puzzle = ('_' * secret_word.length).split('')
    print_puzzle
  end

  # Instance method to guess letter 
  #     input: a letter string
  #     steps: 
  #         1). IF letter was not guessed 
  #                 - enter the letter to the 'guess history' instance variable
  #                 - increase guess_count by 1
  #         2). Iterate over the secret word using string#times method
  #                 - convert secret word to an array by using a split method
  #                 - check if each array value equals to the letter, if so, use that same index number to update the word puzzle result
  #         3). check IF 'word puzzle' equals to 'secret word' 
  #                 'Great job! You've won'
  #                 if not, check IF we still have any more guesses? If no more 
  #                     set is_over to true
  #       call print puzzle
  #     output:  a string
  def guess_letter(letter)

    if !guess_history.index(letter)
      @guess_count += 1
      @guess_history << letter
      @secret_word.length.times do |index|
        if @secret_word.split('')[index] == letter
          @puzzle[index] = letter
       end
      end
    end

    check_guess_count
    print_puzzle
  end

  # Instance method to check guess count
  def check_guess_count
    if @guess_count >= 5
      @is_over = true
      "Sorry, you have used up your guess allowance! :( \n Better luck next time!"
    end
  end

  # Instance method to check if won
  def check_if_won
    if @puzzle.join('') == @secret_word
      "Woohoo! You've won! Good job playa!"
    end
  end

  # Instance method to print current state
  # input: None
  # steps: 
  #     1). divider to set it apart from other outputs
  #     2). puts on the current state of the word puzzle
  # output:  a string
  def print_puzzle
    @puzzle.join(' ')
  end
end

# USER INTERFACE / DRIVER CODES
# game = WordGuessGame.new('kendy')
# game.guess_letter('a')
# game.guess_letter('b')
# game.guess_letter('c')
# game.guess_letter('d')
# game.guess_letter('e')
# game.guess_letter('f')
# p game.guess_history
# p game.guess_count
# puts game.print_puzzle == '_ e _ d _'