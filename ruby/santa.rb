# speak = 'Ho, ho, ho! Haaappy holidays!"
# eat milk and cookies = takes a cookie type and print "That was a good <type of cookie here>!"

class Santa
  # initialize method that prints "Initializing Santa Instance..."
  def initialize(name, gender, ethnicity, time_period)
    puts 'Initializing Santa Instance...'
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @time_period = time_period
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaappy holidays!"
  end
  
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  # attribute-changing methods
  
  # increment Santa's age by one year
  def celebrate_birthday
    @age += 1
  end
  
  # take's a reindeer name as a param and move that reindeer in last place in the reindeer ranking
  def get_mad_at(naughty_reindeer)
    # init new temp array
    temp_arr = []
    # traverse reindeer_ranking array and push each data to temp_arr skipping over naughty reindeer
    @reindeer_ranking.length.times do |i|
      if @reindeer_ranking[i] != naughty_reindeer
        temp_arr << @reindeer_ranking[i]
      end
    end
    # push naughty_reindeer into temp_arr
    temp_arr << naughty_reindeer
    # set temp_arr to @reindeer_ranking
    @reindeer_ranking = temp_arr
  end

  # setter method for @gender allow to be reassigned from outside the class def 
  def gender=(new_gender)
    @gender = new_gender
  end

  # getter method for @age
  def age
    @age
  end
  
  # getter method for @ethnicity
  def ethnicity
    @ethnicity
  end
end

# Create new Santa instance and call it Nick
# Nick = Santa.new
# Nick.speak
# Nick.eat_milk_and_cookies("Oatmeal")

santas = []

# Adding Santa instances in Array
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# Refactored Santa Instances in Array
santa_genders = [
  "agender", 
  "female", 
  "bigender", 
  "male", 
  "female", 
  "gender fluid", 
  "N/A"
]

santa_ethnicities = [
  "black", 
  "Latino", 
  "white", 
  "Japanese-African", 
  "prefer not to say", 
  "Mystical Creature(unicorn)", 
  "N/A"
]
  
santa_name = [
  "Harley Claesson",
  "Zlatica Frank",
  "Eusebius Langenberg",
  "Xanthos Duffy",
  "Clara Sokal",
  "Lucilius Mathilda",
  "Jolanda Kroger"
]
  
santa_time_period = [
  "Ice age",
  "Middle age",
  "Machine age",
  "Renaissance",
  "Golden age",
  "Dark age",
  "Modern"
]
  
  
length = santa_name.length

length.times do |i|
  santas << Santa.new(
              santa_name[i],
              santa_genders[i], 
              santa_ethnicities[i],
              santa_time_period
            )
end

# length.times do |i|
#   p santas[i]
# end

# Test each instance of array with instance method
# santas.each { |int| int.speak }

p santas[0]
santas[0].celebrate_birthday
santas[0].gender = "formerly agender"
santas[0].get_mad_at "Vixen"
p santas[0]

puts santas[0].age
puts santas[0].ethnicity







