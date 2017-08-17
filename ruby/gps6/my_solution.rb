# Virus Predictor

# I worked on this challenge [by myself|.
# I spent [2] hours on this challenge.

#Release 0 - Run The Code
  # Look at the my_solution.rb file. Explain what the program is doing

#Release1: Require Relative
  # EXPLANATION OF require_relative enables loading a file relative to the file that that require_relative is in.
  #Difference between require_relative is for files i wrote myself or that I added. Require accesses everyting ruby has access to, including other people wrote.
  # Require accesses the current working directory whereas require_relative access the file relative to the file it is placed in.


require_relative 'state_data'

class VirusPredictor

#WRelease 3: Comment each method and define what it is responsible for doing.
  #
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#Release 3: Comment each method and define what it is responsible for doing.
  #virus_effects calls the two methods

# Release 5: Refactor virus_effects
  # It's a short but deceptive method that isn't quite DRY. Consider the scope of instance variables to determine what could be refactored. Once you figure out what the issue is, you'll need to edit the predicted_deaths and speed_of_spread methods.
  def virus_effects
    predicted_deaths # don't need this, it is setup on initilize: (@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

# Release 6: Private
  # What is the purpose of "private"?
  #What happens if you move it above virus_effects?
  # When would you want to use this method?

  private #can't access the method from outside the class. if i move above virus effects, it won't be accessible outside of the class VirusPredictor. Use when you don't want someone to use the method outside of your class. Is this for anything including instance variables??

#WRelease 3: Comment each method and define what it is responsible for doing.
  #it predicts the # of deaths based on the required parameters

# Release 5: edit predicted_deaths method

#Release 7: Refactor the private methods predicted_deaths. How can you make it more DRY? Need help with this one


  def predicted_deaths # I don't need this because population density is an instance variable (population_density, population, state)
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

  end

#WRelease 3: Comment each method and define what it is responsible for doing.
  #provides the speed of spread based on the required parameters by calculating a value and printing it.

# Release 5: edit speed_of_spread method

#Release 7: Refactor the speed_of_spread. How can you make them more DRY?

  def speed_of_spread  #I don't need this because population_density is an instance variable(population_density, state) #in months
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

#Release 4: Implement a new feature
# right now this is only running a report for 4 states, and it's not incredibly DRY.
  # Create a report for all 50 states in a DRY way.
  # Does this belong inside the class or outside of it? Why?

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#I am calling a loop on the constant STATE_DATA, so that every state is creating a new instance of VirusPredictor by adding the needed aruguments to create the instances that were defined in initialize.
STATE_DATA.each do |state, state_data| puts "#{state}, #{state_data[:population_density]} #{state_data[:population] }"
  new_states = VirusPredictor.new(state, state_data[:population_density], state_data[:population]) #tgoing through every state in state_data and creating a new virus predictor for each state automatically due to this being a loop.
  new_states.virus_effects #calling virus_effects on the new VirusPredictor instance
end


=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
    The value hash uses a colon instead of a hashrocket to define its key value pairs.
# What does require_relative do? How is it different from require?
    - Difference between require_relative is for files i wrote myself or that I added. Require accesses everyting ruby has access to, including other people wrote.
    - Require accesses the current working directory whereas require_relative access the file relative to the file it is placed in.
    - EXPLANATION OF require_relative enables loading a file relative to the file that that require_relative is in.

# What are some ways to iterate through a hash?
    hash.each hash.each_key hash.each_value - i need help with confirmign my understanding of this

# When refactoring virus_effects, what stood out to you about the variables, if anything?
    - they were repeating the same variables that I know were being collected when the actual two methods were called. so it seem like we were duplicating efforts.
    - Also, I believe if it is written this way, can they be overwritten? there were the same variables that were required parameters in instance variables and

# What concept did you most solidify in this challenge?
    - setting up a loop for a hash but I need more help with setting up loops for arrays and hashes


=end