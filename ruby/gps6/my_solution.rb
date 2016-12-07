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
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Method to output data for each states
# Input: 
    # 1). an array of state name
# def print_state_effects[]

  # this method acts a liaison between the user and private methods and will return their outputs
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    # speed_of_spread(@population_density, @state)
  end

  private

  # this method takes in data to predict the number of deaths and prints a summary statement
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    speed_of_spread(population_density, state)

  end

  # this method takes in data to predict the speed of spread of the virus and prints a summary statement
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

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

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

# Release 4
# iterate over each key in the STATE_DATA hash
# for each key, we will initiate a new instance and pass in the name, population_density, and population
# we'll call .virus_effects on the new instance
# STATE_DATA.each_key do |state|
# VirusPredictor.new(
#   state,
#   STATE_DATA[state][:population_density], 
#   STATE_DATA[state][:population]
#   ).virus_effects
# end

#=======================================================================
# Reflection Section
