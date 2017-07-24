puts "Hello, How many employees will be processed today?"
employees_to_process = gets.chomp.to_i

until employees_to_process == 0

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
birth_year = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you? Please answer yes or no"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company’s health insurance? Please answer yes or no"
health_insurance = gets.chomp

  if (age.to_i.between?(18,100)) && (garlic_bread == "yes") && (health_insurance == "yes")
     puts "Probably NOT a vampire"
  end

  if (age.to_i >100) && (garlic_bread == "no") && (health_insurance == "waive")
    puts "Probably a vampire"

  elsif (age.to_i >100) && (garlic_bread == "no") && (health_insurance == "no")
    puts "Almost certainly a vampire."

  elsif name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire."

  else
    puts "Results Inconclusive"
  end


  puts "Please list your allergies. When list is complete, type 'done'"
  allergies = gets.chomp

  until allergies == "done"
    if allergies == "sunshine"
      puts "Probably a vampire"
      break
    elsif allergies != "done"
    puts "If more allergies, list them. If finished listing allergies, type 'done'"
    allergies = gets.chomp
    #break
    end
  end
  employees_to_process -= 1

end
 print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
#i am not sure if this is where it should go? I tried to put it before the last end and it printed, but it printed every timre the program started over.

=begin
Questions I have:
- Wasnt sure how to verify age and/or year so I set an age range and validated against that.
- I don't know how to check the year against the birthdate entered to verify if they match.
- I am not sure if I honored this requirement in my code above: "Your program should base its result on the latest condition matched, not the first condition matched. In other words, it's not a "only one condition will apply" sort of scenario. This may mean repeatedly updating a variable as each condition is checked, so that the variable always contains the most precise result."

=end