class Santa

  def initialize
    #gender, which will be a string passed in on initialization
    @gender = "gender"
    #gender, which will be a string passed in on initialization
    @ethnicity = "ethnicity"
  end

#an array of reindeer from most preferred to least preferred. This is not passed in on initialization; it simply gets a default value of the array
  def ranking
      @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

#age, which is not passed in on initialization and defaults to 0
def age
  @age = 0
end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
   puts "That was a good #{cookie_type} cookie!"
    cookie_type
  end

  def initialize
    puts "Initializing Santa instance ..."
  end
end



#celebrate_birthday should age Santa by one year.
def birthday
  @celebrate_birthday = birthday + 1



get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. Vixen knows what he did.
The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.
Add two "getter" methods as well:

The method age should simply return @age.
The method ethnicity should return @ethnicity.

clause = Santa.new
clause.speak
clause.eat_milk_and_cookies("chocolate")


