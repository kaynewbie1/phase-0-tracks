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


design = {
  name: "Corey",
  age: "49",
  "no_children" => "4",
  "decor_theme" => "modern",
  pets: "dog"
}

puts "Fill Out Client Details"
print "What is clients name?"
  client_name = gets.chomp
print "What is Age"
  client_age = gets.chomp.to_i
print "How many children "
  total_children = gets.chomp.to_i
print "What is preferred decor theme? (Modern, Retro, Country or Traditional)?"
  client_decor_theme = gets.chomp
print "Do you have pets"
  client_pets = gets.chomp
complete_status = "exit"
client_record1 = design[client_name]
puts "This is what you input, confirm if correct by typing 'correct': #{client_record1}"

