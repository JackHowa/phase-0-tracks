# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  # sets up the input parameters 
  # need to the initialize to run the methods within class  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # method that works as a fork and splits the data basically into other methods
  # in this case, it works to make the driver code more concise, rather than
  # calling the other methods it refers to 
  # kind of like a accessor method 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # maybe keeps some code private?
  private

  # inputs the parameters from the virus_effects fork 
  # uses conditional logic to apply different fatality rates upon different states
  # calls the pop. density 
  # floor built-in ruby makes sure floats aren't outputted 
  # print statement shows user expected fatalities as an integer 
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor # built-in ruby method, rounds down to nearest int
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

  end

  # again a result of the virus fork method 
  # setting speed variable initially 0 and declaring it
  # only inputting two of the three parameters initialized 
  # similar setter conditional logic 
  # print statement interpolates with previous predicted deaths print
  # also declares to new lines at the end 
  # shows user how soon they will die, with speed output 
  def speed_of_spread #in months
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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state_name,state_attributes|

  VirusPredictor.new(state_name, state_attributes[:population_density], state_attributes[:population]).virus_effects

end 



#=======================================================================
# Reflection Section
