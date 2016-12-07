require_relative 'state_data'

class VirusPredictor
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

  def virus_effects
    predicted_deaths
  end

  private

  def predicted_deaths
    @effect_ratio.each_key do |pop_dens|
      if pop_dens.cover?(@population_density)
        @number_of_deaths = (@population * @effect_ratio[pop_dens][:death_ratio]).to_i
      end
    end

    print "#{@state} will lose #{@number_of_deaths} people in this outbreak"

    speed_of_spread
  end

  def speed_of_spread
    @effect_ratio.each_key do |pop_dens|
      if pop_dens.cover?(@population_density)
        @speed = @effect_ratio[pop_dens][:speed_ratio]
      end
    end

    puts " and will spread across the state in #{@speed} months.\n\n"

  end

end

# Driver Code

STATE_DATA.each_key do |state|
VirusPredictor.new(
  state,
  STATE_DATA[state][:population_density], 
  STATE_DATA[state][:population]
  ).virus_effects
end

