=begin
program for a designer to input interior design details for each client
input and capture interior design details by client - name, age, number of children, decor theme
keys should be symbols unless needed for formatting

Required Program Rules
- Prompt the designer/user for all of this information.
- Convert any user input to the appropriate data type.
- Print the hash back out to the screen when the designer has answered all of the questions.
- Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
- Print the latest version of the hash, and exit the program.

=end

#create a hash to begin capturing needed data
=begin
program for a designer to input interior design details for each client
input and capture interior design details by client - name, age, number of children, decor theme
keys should be symbols unless needed for formatting

Required Program Rules
- Prompt the designer/user for all of this information.
- Convert any user input to the appropriate data type.
- Print the hash back out to the screen when the designer has answered all of the questions.
- Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
- Print the latest version of the hash, and exit the program.

=end

#create a hash to begin capturing needed data
design = {}

#ask for information from user
puts "what is your name"
#declare variable to store information from user
client_name = gets.chomp
#declare key and put value from user input
design[:name] = client_name

puts "what is your age"
clients_age = gets.chomp

#convert string to integer for age
design[:age] = clients_age.to_i


puts "Do you have a pet, yes or no?"
pet_status = gets.chomp
design[:pet] = pet_status

puts "What is your favorite decor theme: modern, retro, traditional or country?"
decor_theme = gets.chomp
design[:decor] = decor_theme

puts "How many children do you have?"

#convert string to integer for number of children value
no_children = gets.chomp.to_i
design[:children] = no_children

#Print out final input to show user
puts design

#Ask user if they have changes given them what they change but also add 'none' in case they don't have changes
puts "Do you have changes?
If yes, what do you want to change: name, age, pet, decor, children? If no changes, type 'none'."

#store user input and convert string to symbol
change_data = gets.chomp.to_sym
#if user has changes and did not enter 'none'
if change_data != :none
  #if changes, ask them what they want to change
  puts "what do you want to change #{change_data} to?"
  #if they input an integer for age or number of children, the convert string to integer
    if design[change_data].is_a? Integer
    design[change_data] = gets.chomp.to_i
    #else if not an integer, keep as a string
    else
    design[change_data] = gets.chomp
    end
#if the user types 'none' print Thank you to screen and final input details

else
  puts "Thank you, here is your final list"
end
puts design

#the program is not reading "none" as a string so converting to a symbol and adding as a new key called :none. How do I make it read 'none' as a string so it can end and put thank you if they type none? I tried to convert to string by using the method: "none".to_s but it didn't work. I am lost on this one. Need help. (andrew answered it by explaining none needed to be a symbol since I converted the user input to symbol)

#also, why and when do I use != none vs == !("none") I am confused on this also because sometime it works and other times it don't.






# change_data = gets.chomp.to_sym
# if change_data == !("none")
#   puts "what do you want to change #{change_data} to?"
#     if design[change_data].is_a? Integer
#     design[change_data] = gets.chomp.to_i
#     else
#     design[change_data] = gets.chomp
#     end
# else
#   puts "Thank you, here is your final list"
# end
# puts design
