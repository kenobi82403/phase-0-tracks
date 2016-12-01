# Santa................

# Characteristic.......


# Behavior.............
# speak = 'Ho, ho, ho! Haaappy holidays!"
# eat milk and cookies = takes a cookie type and print "That was a good <type of cookie here>!"



class Santa
  # initialize method that prints "Initializing Santa Instance..."
  def initialize
    puts 'Initializing Santa Instance...'
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