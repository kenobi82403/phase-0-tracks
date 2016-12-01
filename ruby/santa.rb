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
              santa_genders[i], 
              santa_ethnicities[i],
              santa_name[i],
              santa_time_period
            )
end

length.times do |i|
  p santas[i]
end

# Test each instance of array with instance method
santas.each { |int| puts int.speak }











################################ Notes

# class Puppy
#   def initialize(name)
#   	@name = name
#   end
	
#   def bark
#   	puts "#{@name} says: Woof!"
#   end
# end

# # we make an array of names to build puppies with
# names = ["Fido", "Spot", "Duchess", "Ginger"]

# # we make an empty container for our puppy collection
# puppies = []

# puts "Iterating through names list to create puppies ..."
# names.each do |name|
#   puts "Creating a puppy named #{name} ..."
#   puppies << Puppy.new(name)
#   puts "There are now #{puppies.length} Puppy instances in the array"
#   puts "----"
# end

# puts "Testing each Puppy instance in the array to make sure it can bark ..."
# puppies.each do |puppy|
#   puppy.bark
# end