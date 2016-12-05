# load word_guess.rb
require_relative 'word_guess'

# describe block for testing WordGuessGame class
describe WordGuessGame do
  # Initiate a WordGuessGame class for testing
  let(:game){WordGuessGame.new('    kendY ')}
  
  # Test initiate method to have set attributes secret_word, guess_remaining, guess_history, is_over, and puzzle
  it "should initiate and set the following attributes: secret_word, guess_remaining, is_over, and puzzle" do
    expect(game).to have_attributes(
      :secret_word => 'kendy',
      :wrong_guess_allowed => 'kendy'.length,
      :guess_count => 0,
      :guess_history => [],
      :is_over => false,
      :puzzle => ['_','_','_','_','_']
      )
  end

  # Keep track of each guess by the user and save it into an array and does not allow repeated letters
  it "push the letter string into an array when user enter a new input" do 
    game.guess_letter('e')
    game.guess_letter('e')  
    game.guess_letter('d')
    game.guess_letter('w')
    expect(game.guess_history).to eq ['w']
  end

  # Keep track of each guess by the user and save it into an array and does not allow repeated letters
  it "push the letter string into an array when user enter a new input" do 
    game.guess_letter('e')
    game.guess_letter('e')  
    game.guess_letter('d')
    expect(game.guess_history).to eq []
  end

  # Increase the guess counter every time the user enter an input but does not increase on repeated guess or guess is correct
  it "increases the guess counter, when user enter a new input" do 
    game.guess_letter('Ee')
    game.guess_letter('e')  
    game.guess_letter('d')
    game.guess_letter('w')
    game.guess_letter('w')
    expect(game.guess_count).to eq 1
  end

  # Allow guesser to input letter string as guesses and it will return a string showing the current state of the blank word puzzle
  it "should return a letter string showing the current state of the blank word puzzle every time the user guesses" do
    game.guess_letter('e')
    expect(game.print_puzzle).to eq '_ e _ _ _'
  end

  # Guesses are limited to the length of the secret word
  it "stops the game when the user used up its guess allowance" do 
    game.guess_letter('a')
    game.guess_letter('b')
    game.guess_letter('c')
    game.guess_letter('d')
    game.guess_letter('e')
    game.guess_letter('f')
    game.guess_letter('g')
    expect(game.is_over).to eq true
  end

  # Stops the game when user guess all the correct letters
  it "Stops the game when user guess all the correct letters" do 
    game.guess_letter('k')
    game.guess_letter('e')
    game.guess_letter('n')
    game.guess_letter('d')
    game.guess_letter('y')
    expect(game.is_over).to eq true
  end
end