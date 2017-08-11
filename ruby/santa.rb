class Santa

# Release 2 - Add getter and Setter methods
  # def age
  #   @age
  # end

  # def gender
  #   @gender
  # end

  # # setter methods
  # def gender=(new_gender)
  #   @gender = new_gender
  # end

  #Release # attribute method helpers
  # attr reader is the shortcut for the getter methods
  attr_reader :age, :reindeer_ranking, :ethnicity
  # attr writer is the shortcut for the setter methods
  # attr_writer
  # attr accessor is the shorcut for when we have both getter and setter methods
  attr_accessor :gender

def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  #

  def eat_milk_and_cookies(cookie_type)
   puts "That was a good #{cookie_type} cookie!"
    cookie_type
  end

# instance variables are attributes of the class
# attributes that every single instance of that class will have in common
# but some of the values of the attributes can be different between
# different
# instances of the class
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end
clause = Santa.new("female", "latino")
clause.speak
clause.eat_milk_and_cookies("chocolate")
p clause.age
p clause.gender

# instance methods are more behaviors or actions of the class
# things that we use to interact with our class
# they are behaviors instances of the class have
# they can change and modify instance variables
  def get_mad_at(reindeer_name)

    # take the name of the reindeer from the parameter reindeer_ranking.at(0)
    # move that reindeer name to the last index in the array
    # research array builtin methods that will push an item in an array
    # to the end
    @reindeer_ranking.rotate(reindeer_name)
  end

  def celebrate_birthday
    @age += 1
  end
#QUESTION: how do I get birthday to run? right now, it keeps showing up as the default value '0', but I don't know how to get it to add 1 to the age and change it and make it appear when we call the method celebrate_birthday
end


first_santa = Santa.new("female", "latino")
second_santa = Santa.new("male", "white")

p first_santa.age
p first_santa.gender
#p first_santa.get_mad_at(vixen)

first_santa.gender= "nonbinary"

p first_santa.gender

santas = []
100.times do ||
  santa = Santa.new
  santas << Santa.new
  end



# class Vehicle

#   def initialize(type)
#     @type = type
#     @num_of_wheels = 0
#   end

#   def set_num_of_wheels(type)
#     case type
#     when "car"
#       @num_of_wheels = 4
#     when "trailer"
#       @num_of_wheels = 2
#     when "tractor"
#       @num_of_wheels = 3
#     when "semi"
#       @num_of_wheels = 18
#     end
#   end
# end

=begin
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

#puts santas Question: why when I call: p santas, it prints all detais but when I call: puts santas, it only list the new santas instances but not the details? I wanted all details on their own line seperated by a new line
=end

=begin
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
p santas
=end

#NOT SURE I UNDERSTAND THIS
=begin
Add some diverse initializations to your file as driver code, then test your work by running the program from the command line. Feel free to get fancy with loops and whatnot, or keep it simple if you prefer.
=end

