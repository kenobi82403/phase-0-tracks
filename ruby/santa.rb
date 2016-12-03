class Santa
  # read access outside of class
  attr_reader :ethnicity, :age, :reindeer_ranking
  # read and write access outside of class
  attr_accessor :gender, :time_period, :name
  
  # initialize method that prints "Initializing Santa Instance..."
  def initialize(name, gender, ethnicity, time_period)
    puts 'Initializing Santa Instance...'
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @time_period = time_period
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(140)
  end

  # speak = 'Ho, ho, ho! Haaappy holidays!"
  def speak
    puts "Ho, ho, ho! Haaappy holidays!"
  end
  
  # eat milk and cookies = takes a cookie type and print "That was a good <type of cookie here>!"
  def eat_milk_and_cookies(cookie_type)
    puts "Hmmm!! That was a good #{cookie_type}!"
  end

  # ATTRIBUTE-CHANGING methods
  # Increment Santa's age by one year
  def celebrate_birthday
    @age += 1
  end
  
  # Take's a reindeer name as a param and move that reindeer to last place in the reindeer ranking
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

  # Class method to print all instance variable
  def print_santa
    puts
    puts ("#" * 10) + ' Your Instance Variables: ' + ("#" * 10)
    puts
    puts "Name: #{@name}"
    puts "Age: #{@age}"
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Time Period: #{@time_period}"
    puts "Reindeer Ranking: #{@reindeer_ranking}"
  end
end

# Refactored Santa Instances in Array
santa_name = [
  "Harley Claesson",
  "Zlatica Frank",
  "Eusebius Langenberg",
  "Xanthos Duffy",
  "Clara Sokal",
  "Lucilius Mathilda",
  "Jolanda Kroger"
]

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
  
santa_time_period = [
  "Ice age",
  "Middle age",
  "Machine age",
  "Renaissance",
  "Golden age",
  "Dark age",
  "Modern"
]

# declare empty santas array to store instances
# santas = []

# loop over length of santa_name array and create new santa class based on the number of names while passing data from variables  
# santa_name.length.times do |i|
#   santas << Santa.new(
#               santa_name[i],
#               santa_genders[i], 
#               santa_ethnicities[i],
#               santa_time_period[i]
#             )
# end

# length.times do |i|
#   p santas[i]
# end

# Test each instance of array with instance method
# santas.each { |int| int.speak }

# santas[0].print_santa # print all instance variable for Harley
# santas[0].celebrate_birthday # increment age by 1
# santas[0].gender = "formerly agender" # change gender to formerly agender
# santas[0].get_mad_at "Vixen" # bump Vixen to the last place
# santas[0].print_santa # print all instance variable for Harley

# santas[1].print_santa # print all instance variable for Zlatica

# SantaCon Simulator Interface
puts
puts ("#" * 10) + " SantaCon Simulator v1.0!" + ("#" * 10)
puts
puts "How many Santas would you like?"
num_of_santas = gets.chomp.to_i

# reiterate this code based on user's input
num_of_santas.times do |i|
  Santa.new(  santa_name.sample(1),
              santa_genders.sample(1), 
              santa_ethnicities.sample(1),
              santa_time_period.sample(1)  )
        .print_santa # method to print all attributes

end