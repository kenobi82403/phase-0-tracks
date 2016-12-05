# GAME LOGIC
  # class for WordGuessGame
class WordGuessGame
  # Getter methods
  attr_reader :secret_word, 
              :wrong_guess_allowed,
              :guess_count,
              :guess_history, 
              :is_over, 
              :puzzle

  # Instance method to initialize
  #     input: a string
  #     steps: 
  #         convert secret word to down case and strip all white spaces
  #         Instance variable to store secret word string
  #         Instance variable to store wrong guess allowance up to length of secret word, integer
  #         Instance variable to set guess count to zero, an integer
  #         Instance variable to keep track of guess history, an empty array
  #         Instance variable to see if game is over, accepts a boolean
  #         Instance variable to convert secret word to blank spaces, convert from string to array
  #     output:  new instance class with attributes
  def initialize(secret_word)
    secret_word = secret_word.downcase.strip
    @secret_word = secret_word
    @wrong_guess_allowed = secret_word.length
    @guess_count = 0
    @guess_history = []
    @is_over = false
    @puzzle = ('_' * secret_word.length).split('')
  end

  # Instance method to guess letter 
  #     input: a letter string
  #     steps: 
  #         1). IF letter is not in the guess history array and not in the secret word
  #                 - increase guess_count by 1
  #                 - enter the letter to the 'guess history' instance variable
  #         2). Iterate over the secret word using string#times method
  #                 - convert secret word to an array by using a split method
  #                 - check if each array value equals to the letter, if so, use that same index number to update the word puzzle result
  #         3). IF 'word puzzle' equals to 'secret word' or if guess_count equal to or exceed guess allowance
  #                 - game is over
  #         4). return is over
  #     output:  a boolean
  def guess_letter(letter)
    letter = letter.downcase.strip
    abc = 'abcdefghijklmnopqrstuvwxyz'
    if letter.length > 1 || !abc.index(letter)
      return false
    elsif !guess_history.index(letter) && !@secret_word.index(letter)
      @guess_count += 1
      @guess_history << letter
    end

    @secret_word.length.times do |index|
      if @secret_word.split('')[index] == letter
          @puzzle[index] = letter
      end
    end

    if @puzzle.join('') == @secret_word || @guess_count >= @wrong_guess_allowed
      @is_over = true
    end
  end

  # Instance method to print current state
  # input: None
  # steps: converts puzzle array to string
  # output:  puzzle string
  def print_puzzle
    @puzzle.join(' ')
  end
end

# USER INTERFACE / DRIVER CODES
puts "Hey! Great to have you here. Are you ready to play the greatest word guess game!"
puts
puts "Okay.. Player two please don't peek!"
puts 
puts "Player one, please input your secret word.."
game = WordGuessGame.new(gets.chomp) # get secret word from player one

until game.is_over
  puts
  puts "Player two, please guess one letter?"
  game.guess_letter(gets.chomp)

  # Output the progress of the game
  puts
  puts game.print_puzzle
  puts
  puts "You have #{game.wrong_guess_allowed - game.guess_count} wrong guess allowance.."
  puts

  if game.guess_count >= game.wrong_guess_allowed
    puts "Sorry, you have used up your guess allowance!"
    puts "The secret word was '#{game.secret_word}'"
    puts "Better luck next time!"
  end
  
  if game.puzzle.join('') == game.secret_word
    puts "Woohoo! You've won! Good job playa!"
  end
end
puts
puts "Thank you for playing the greatest Word Guess Game! Please come again!"