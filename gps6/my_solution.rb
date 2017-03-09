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

    # maybe keeps some code private?
    # special keyword used 
    # public, private, protected = similar to html5 
    # make anything later unavailable outside of the class 


  # method that works as a fork and splits the data basically into other methods
  # in this case, it works to make the driver code more concise, rather than
  # calling the other methods it refers to 
  # kind of like a accessor method 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  private


  # inputs the parameters from the virus_effects fork 
  # uses conditional logic to apply different fatality rates upon different states
  # calls the pop. density 
  # floor built-in ruby makes sure floats aren't outputted 
  # print statement shows user expected fatalities as an integer 
  def predicted_deaths
    # predicted deaths is solely based on population density

    # set number of death equal to conditional output
    number_of_deaths = 
      (if @population_density >= 200
        @population * 0.4 # built-in ruby method, rounds down to nearest int
      elsif @population_density >= 150
        @population * 0.3
      elsif @population_density >= 100
        @population * 0.2
      elsif @population_density >= 50
        @population * 0.1
      else
        @population * 0.05
      end).floor

    # refactor floor into the output rather than the work bc repetition 


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
    speed = 
      (if @population_density >= 200
        0.5
      elsif @population_density >= 150
        1
      elsif @population_density >= 100
        1.5
      elsif @population_density >= 50
        2
      else
        2.5
      end)

      # in a similar way refactor setting seemingly indexed variable equal to conditional output
      # not sure if parens necc
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

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state_name,state_attributes|

  VirusPredictor.new(state_name, state_attributes[:population_density], state_attributes[:population]).virus_effects

end 



#=======================================================================
# Reflection Section
=begin 

What are the differences between the two different hash syntaxes shown in the state_data file?

One hash syntax is a hash syntax within another hash. The bigger hash has a string as the key, 
while the hash within uses symbols for its two keys.

What does require_relative do? How is it different from require?

Require_relative includes require in its call. Require relative is also more specific 
in calling where the file is called from, while require needs to include more about the file path.

What are some ways to iterate through a hash?

You can iterate through a hash with each. You can also iterate through a hash using an index 
or map.  

When refactoring virus_effects, what stood out to you about the variables, if anything?

The variables were not necessary when they were global in scope. 

What concept did you most solidify in this challenge?

Using hashes within a hash was a new concept for me within an each loop. 

=end 

