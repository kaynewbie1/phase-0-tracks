=begin
age = 0
until age.to_i == 50

puts "what is your age"
age = gets.chomp
=end

=begin

rescue Exception => e

end
puts "Is your hair brown?"
hair_brown = gets.chomp

puts "is your hair short?"
short_hair = gets.chomp





=begin

rescue Exception => e

end
if (age.to_i.between?(0,100)) && (hair_brown == "yes") && (short_hair == "yes")
   puts "Happy Person"
 end
elsif (age.to_i < 100) && (hair_brown == "no") && (short_hair = "no")
  puts "Not Happy person"
elsif (age.to_i != 100) && (hair_brown == "no") && (short_hair = "yes")
  puts "Not Happy person"
elseif (age.to_i > 100) && (hair_brown == "yes") && (short_hair = "no")
  puts "Not Happy person"
else
  puts "Not Happy person"
end
=end



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
    #puts "Please list your allergies. When list is complete, type 'done'"
    allergies = gets.chomp
    #break
    end
  end
  employees_to_process -= 1

end
 print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
