# Santa................

# Characteristic.......


# Behavior.............
# speak = 'Ho, ho, ho! Haaappy holidays!"
# eat milk and cookies = takes a cookie type and print "That was a good <type of cookie here>!"

# gender, which will be a string passed in on initialization
# ethnicity, which will be a string passed in on initialization
# reindeer_ranking, an array of reindeer from most preferred to least preferred. This is not passed in on initialization; it simply gets a default value of ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
# age, which is not passed in on initialization and defaults to 0

class Santa
  # initialize method that prints "Initializing Santa Instance..."
  def initialize(gender, ethnicity)
    puts 'Initializing Santa Instance...'
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaappy holidays!"
  end
  
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

end

# Create new Santa instance and call it Nick
Nick = Santa.new
Nick.speak
Nick.eat_milk_and_cookies("Oatmeal")