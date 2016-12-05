# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.

# Guesses are limited, and the number of guesses available is related to the length of the word.

# Repeated guesses do not count against the user.

# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".

# The user should get a congratulatory message if they win, and a taunting message if they lose.

# load word_guess.rb
require_relative 'word_guess'

# describe block for testing WordGuessGame class
describe WordGuessGame do
  # Initiate a WordGuessGame class for testing
  let(:game){WordGuessGame.new('kendy')}
  
  # Test initiate method to have set attributes secret_word, guess_remaining, guess_history, is_over, and current state
  it "should initiate and set the following attributes: secret_word, guess_remaining, is_over, and current_state" do
    expect(game).to have_attributes(
      :secret_word => 'kendy',
      :guess_remaining => 'kendy'.length,
      :is_over => false,
      :current_state => '_ _ _ _ _'
      )
  end

  # Allow one user to input a word string as the secret word and save that word into the instance variable
  it "should return the string as the value of the attribute @secret_word entered by the user" do

  end

  # Allow guesser to input letter string as guesses and it will return a string showing the current state of the blank word puzzle
  it "should return a letter string showing the current state of the blank word puzzle every time the user guesses" do

  end

  # Keep track of each guess by the user and save it into an array
  it "push the letter string into an array when user enter a new input" do 

  end

  # Increase the guess counter every time the user guess wrong
  it "doesn't push the letter string into an array if user enter a repeated input" do 

  end

  # Increase the guess counter every time the user guess wrong
  it "increases the guess counter, when user enter a new incorrect input" do 

  end

  # Repeated guesses does not count against remaining guesses
  it "doesn't increase the guess counter when user enter a repeated input" do 

  end

  # Guesses are limited to the length of the secret word
  it "stops the game when the user used up its guess allowance" do 

  end

  # User get a congratulatory message if they win
  it "returns a string when the user wins" do 

  end

  # User get a taunting message if they lose
  it "returns a string when the user loses" do

  end

end