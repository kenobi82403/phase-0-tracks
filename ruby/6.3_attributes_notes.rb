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

################################ Getter and Setters

# get state or attributes accessible outside the class
# => to do that start with being able to access the @name and @location
#    either being able to read these accessible. making these attributes
#    readable vs writable. 
# => In order to make @name and @location readable we need to write getter methods
#    getter methods are methods that wrap around a piece of data and return that data
# => to make @name and @location writable, we need to write setter methods
#    reindeer.name = "new name"
# => getter and setter methods are so common in ruby, there is a syntatic sugar in Ruby. A shortcut to type.
# => Getter shortcut:  attr_reader :name, :location
#     *this declaration is the same as, reader access only 
          # getter methods for attributes, purpose is to make private data available outside the class, make data readable
          # def name
          #   @name
          # end
          
          # def location
          #   @location
          # end
# => Setter shortcut:  attr_accessor :name
#      * gives read and write access to @name
          # setter methods for attributes, make data writable. *becareful, you might not want your attributes writable
          # def name=(new_name)
          #   @name = new_name
          # end
# => there is also attr_writer => only writable but not readable which is not common because if you give write access you would want a readable also

class Reindeer
  attr_reader :location
  attr_accessor :name 

  def initialize(name)
    @name = name
    @location = "the North Pole"
  end

  def take_off(altitude)
    puts "#{@name} took off."
    puts "#{@name} ascended to #{altitude} feet."
  end
  
  def land(location)
    puts "#{@name} landed safely in #{location}."
    @location = location
  end

end

reindeer = Reindeer.new("Dasher")
puts "#{reindeer.name} is in #{reindeer.location}."
reindeer.take_off(3000)
reindeer.land("Cape Town")
reindeer.name = "The Reindeer Formely Known as Dasher"
puts "#{reindeer.name} is in #{reindeer.location}."