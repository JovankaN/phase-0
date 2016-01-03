
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative

#Compliments the built-in method require.
#Allows us to load a file that is relative to the file that includes the required relative statement.
#Links two files => solution connected to answers
#Require is used to link to outside sources (such as gems). Require Relative is used only for files that are in the same directory.
#
require_relative 'state_data'


class VirusPredictor
  #attr_accessor :population :population_density

  def initialize(state_of_origin, population_density, population)
    #sets up the initial/starting conditions of the new instance that you'll make.
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # runs two other methods , predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths#(population_density, population, state)

    speed_of_spread#(population_density, state)
    # predicted_deaths(@population_density, @population, @state)
    # speed_of_spread(@population_density, @state)
  end

  private
  # Private method can not be called with a explicit receiver .
  def predicted_deaths#(#population_density, population, state)
    # Method takes in three arguments, and it compares population density with the given criteria ,
    # predicted deaths is solely based on population density

    def predicted_deaths
      case true
        when @population_density >= 200 then (@population * 0.4).floor
        when @population_density >= 150 then (@population * 0.3).floor
        when @population_density >= 100 then (@population * 0.2).floor
        when @population_density >= 50 then (@population * 0.1).floor
        else (@population * 0.05).floor
     end


    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end
    #prints the number of deaths along with the state's name
          puts "#{@state} will lose #{@predicted_deaths} people in this outbreak"
        end
  end

  def speed_of_spread#(population_density, state) #in months
    # Takes in two arguments: population_density, and the name of the state.
    # It will predict how much time it takes to spread.
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case true

    when @population_density >=200 then speed += 0.5
    when @population_density >=150 then speed +=1
    when @population_density >= 100 then speed +=1.5
    when @population_density >=50 then speed += 2
    else speed +=2.5
    end
    # Tells us how quickly it will spread and the name of the state.
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

STATE_DATA.each {|state, info| VirusPredictor.new(state, info[:population_density], info[:population]).virus_effects }

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
#The hash rocket creates a hash key value pair, it is good to be used when our key is a "string" in our case, and the #key: syntax creates keyand value pairs as well just this way the key is symbolized nad imutable , and is way much faster saving memory as well.
# What does require_relative do? How is it different from require?

#Allows us to load a file that is relative to the file that includes the required relative statement.
#Links two files => solution connected to answers.
#Require is used to link to outside sources (such as gems). Require Relative is used only for files that are in the same directory.
# What are some ways to iterate through a hash?
#In our case we used .each to iterate through our hash
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#We didn't need the variables no more. Instead we just called those methods in the virus_effects method.
# What concept did you most solidify in this challenge?
#how to modify test code outside of the class and iterate over the nested hash...pretty interesting.