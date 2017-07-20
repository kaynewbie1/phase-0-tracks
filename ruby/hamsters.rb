puts "What's your name?"
hamster_name = gets.chomp

puts "On a scale of 1 to 10, how loud is the hamster?"
volume = gets.chomp.to_i

puts "What is the fur color?"
fur_color = gets.chomp

puts "Is the hamster good to go? (y/n)"
adoptable = gets.chomp
if adoptable == "y"
    adoptable = true
else
    adoptable = false
end

puts "How old is the hamster?"
hamster_age = gets.chomp
if hamster_age.empty?
    hamster_age = nil
else
    hamster_age = hamster_age.to_i
end