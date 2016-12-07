# Virus Predictor

# I worked on this challenge [by Kendy Ng, with: Joe Harrow].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#   Require_relative loads in a the desired file by looking inside your current directory, you're not required to add the .rb extension.
#   Require is used to load other gems or dependencies. It starts by looking in the core Ruby directory.

# load in the state_data file
require_relative 'state_data'

class VirusPredictor
  # the default method which runs when you create a new instance of this class and will assign the values to their respective instance variable
  # created new hash to store death and speed ratios
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @effect_ratio = {
      (0..49) => {
        death_ratio: 0.05,
        speed_ratio: 2.5
      },
      (50..100) => {
        death_ratio: 0.1,
        speed_ratio: 2    
      },
      (101..150) => {
        death_ratio: 0.2,
        speed_ratio: 1.5    
      },
      (151..200) => {
        death_ratio: 0.3,
        speed_ratio: 1    
      },
      (201..Float::INFINITY) => {
        death_ratio: 0.4,
        speed_ratio: 0.5    
      }
    }
  end

  # this method acts a liaison between the user and private methods and will return their outputs
  def virus_effects
    predicted_deaths
  end

  private

  # this method iterate over each key of effect_ratio hash based on the state's population's density and return the appropriate death_ratio. It outputs a string to communicate the result along with the result of the method 'speed_of_spread' 
  def predicted_deaths
    @effect_ratio.each_key do |pop_dens|
      if pop_dens.cover?(@population_density)
        @number_of_deaths = (@population * @effect_ratio[pop_dens][:death_ratio]).to_i
      end
    end

    print "#{@state} will lose #{@number_of_deaths} people in this outbreak"

    speed_of_spread
  end

  # this method iterate over each key of effect_ratio hash based on the state's population's density and return the appropriate speed_ratio. It outputs a string to communicate the result.
  def speed_of_spread #in months
    @effect_ratio.each_key do |pop_dens|
      if pop_dens.cover?(@population_density)
        @speed = @effect_ratio[pop_dens][:speed_ratio]
      end
    end

    puts " and will spread across the state in #{@speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
# alabama = VirusPredictor.new(
#       "Alabama", 
#       STATE_DATA["Alabama"][:population_density], 
#       STATE_DATA["Alabama"][:population]
#       )
# alabama.virus_effects

# jersey = VirusPredictor.new(
#       "New Jersey", 
#       STATE_DATA["New Jersey"][:population_density], 
#       STATE_DATA["New Jersey"][:population]
#       )
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# Release 4
# iterate over each key in the STATE_DATA hash
# for each key, we will initiate a new instance and pass in the name, population_density, and population
# we'll call .virus_effects on the new instance
STATE_DATA.each_key do |state|
VirusPredictor.new(
  state,
  STATE_DATA[state][:population_density], 
  STATE_DATA[state][:population]
  ).virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file? The '=>' way of hash syntax is the literal way of writing the hash and the 'key:' method is a shortcut where ruby knows that you want to use a symbol ':key' as the accessor and it automatically appends => in the middle of the key: and value.
# What does require_relative do? How is it different from require? require_relatives loads in a file from your working directory. require searches through your ruby $LOAD_PATH, pretty much there your Ruby Root files are to search for your file and if you don't specify your directory it won't look into your working directory.
# What are some ways to iterate through a hash? Ruby gives you many ways, either through a .each method, .each_key method, or .each_pair method etc.
# When refactoring virus_effects, what stood out to you about the variables, if anything? It wasn't apparent at first but later on i realized the variables are instance variables and it is visible within the instance so technically you won't need to pass it in if the method is being called within the class so you can just use the instance variable as is and won't need to pass in the data.
# What concept did you most solidify in this challenge? The concept on refactoring and scope.