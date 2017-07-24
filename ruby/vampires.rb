=begin
  What is your name? Some known vampires are in the area, and we can check against the Werewolf Intelligence Bureau database for their aliases.
=end
puts "What is your name?"
name = gets.chomp
=begin
  How old are you? What year were you born? This is to try to trick the vampire, who is likely several hundreds of years old. If an employee gives an age and a year of birth that don’t line up mathematically, that employee might be a vampire.
=end
puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
birth_year = gets.chomp
=begin
  Our company cafeteria serves garlic bread. Should we order some for you? Vampires hate garlic. Do not even get a vampire started on garlic. Invite a vampire to an Italian restaurant even one time, and you’ll never hear the end of it.
=end
puts "Our company cafeteria serves garlic bread. Should we order some for you? Please answer yes or no"
garlic_bread = gets.chomp
=begin
  Would you like to enroll in the company’s health insurance? Vampires are immortal, so they certainly don’t need health insurance.
=end

puts "Would you like to enroll in the company’s health insurance? Please answer yes or no"
health_insurance = gets.chomp

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”

if (age.to_i.between?(18,100)) && (garlic_bread == "yes") && (health_insurance == "yes")
   puts "Probably NOT a vampire"
 end

#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
if (age.to_i >100) && (garlic_bread == "no") && (health_insurance == "waive")
  puts "Probably a vampire"


# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”

elsif (age.to_i >100) && (garlic_bread == "no") && (health_insurance == "no")
  puts "Almost certainly a vampire."
#end

# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
elsif name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire."
end

=begin
Questions I have:
- I think I need to set an acceptable age to check against
- I don't know how to check the year against the birthdate entered to verify if they match
- I am not sure if I honored this requirement in my code above: "Your program should base its result on the latest condition matched, not the first condition matched. In other words, it's not a "only one condition will apply" sort of scenario. This may mean repeatedly updating a variable as each condition is checked, so that the variable always contains the most precise result."

=end