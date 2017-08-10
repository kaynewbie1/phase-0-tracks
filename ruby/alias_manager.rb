=begin
Release 0: Attempt a Tricky Algorithm
In phase-0-tracks/ruby/alias_manager.rb, pseudocode and write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it by doing the following:
=end


#Psuedocode
# Input: name as a string
# Output: String that is encrypted

# step 1: swap name order, first and last
# step 2: Create methods for next vowel
# step 3: Create methods for next consonant
#step 4: run encryption on the string
#step 5: return the modified string
#step 6: collect user input

# step 1: swap name order, first and last
def name_swap(name)
  #Convert name string into an to array
  converted_name = name.split(" ")
  #swap first and last name in array
  converted_name[0], converted_name[1] = converted_name[1], converted_name[0]
  #Create new array to house new name and capitalize it
  swapped_name = converted_name[0].capitalize + " " + converted_name[1].capitalize
  return swapped_name
end

p name_swap("Felicia Torres")
p name_swap("felicia torres")

=begin
Step 2: Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou'
=end

def next_vowel(letter)
  vowel_array = ['a', 'e', 'i', 'o', 'u']
if letter =='u'
  return 'a'
end
new_vowel = vowel_array.index(letter) + 1
return vowel_array [new_vowel]
end
p next_vowel('a')

=begin
Step 3: change all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
=end
def next_consonant (letter)
  consonant_array = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
if letter  == 'z'
  return 'b'
end
new_consonant = consonant_array.index(letter) + 1
return consonant_array [new_consonant]
end
p next_consonant('r')

#step 4: run encryption on the string
def alias_manager(name)
  vowel_array = ['a', 'e', 'i', 'o', 'u']
  consonant_array = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
  encrypted_name = ""
  name.downcase.each_char do |letter|
    if vowel_array.include?(letter)
      new_vowel = next_vowel(letter)
    encrypted_name << new_vowel
    elsif consonant_array.include?(letter)
      new_consonant = next_consonant(letter)
      encrypted_name << new_consonant
    else
      encrypted_name << letter
    end
  end
  name_swap(encrypted_name)
  #original_names << final_name
  #original_names.each do |x|
    #puts "#{name} is actually #{final_name}"
#end
end

=begin
#join string back together and swap name
def join_name(new_name, name)
  name=name.join("").capitalize
  original_names = []
  new_name = new_name.split(" ")
  new_name[0], new_name[1] = new_name[1], new_name[0]
  final_name = new_name[0].capitalize + " " + new_name[1].capitalize
end
=end


=begin
# step 1: swap name order, first and last
def name_swap(name)
  #Convert name string into an to array
  converted_name = name.split(" ")
  #swap first and last name in array
  converted_name[0], converted_name[1] = converted_name[1], converted_name[0]
  p converted_name
  #Create new array to house new name and capitalize it
  swapped_name = converted_name[0].capitalize + " " + converted_name[1].capitalize
end

p name_swap("kalier howard")
=end

=begin
Step 6: ask for user input
Provide a user interface that lets a user enter a name and get a fake name back. Let the user do this repeatedly until they decide to quit by typing 'quit'. (They might just hit Enter to continue.)
=end



original_names = {}
loop do
  puts "Enter your name for an alias. After all names have been entered, type quit."
  name = gets.chomp
  break if name == "quit"
  original_names[name] = alias_manager(name)
end
original_names.each do |key, value|
  puts "Your name #{key} is now #{value}."
end





=begin
This is the most complex algorithm you've had to write, and the toughest release of this challenge. How will you break it down into manageable pieces? Try to identify all of the mini-challenges and considerations that show up in your algorithm, such as
When will it be helpful to convert the string to an array to work with it more easily?
How will you figure out whether a letter is a vowel?
How will you deal with the fact that some letters are uppercase?
How will you handle edge cases?
You may find it helpful to write additional methods -- one for each job -- and then combine them. It's less overwhelming, for instance, to start converting your algorithm to code by writing a next_vowel method that takes a vowel character and returns the next vowel character. Once you know that small piece works because you've tested it with a few different vowels, you can use it in your program and trust that it's unlikely to be the source of any bugs that come up. This is a great way to make steady progress.

If you do successfully implement the algorithm, "Felicia Torres" will become "Vussit Gimodoe", which is a rather odd name. Luckily, our dearest Vussit is from a country no one has ever heard of, mainly because it doesn't really exist.

Release 1: Provide a User Interface
DO THE THING
Provide a user interface that lets a user enter a name and get a fake name back. Let the user do this repeatedly until they decide to quit by typing 'quit'. (They might just hit Enter to continue.)

Release 2: Store the Aliases
DO THE THING
Use a data structure to store the fake names as they are entered. When the user exits the program, iterate through the data structure and print all of the data the user entered. A sentence like "Vussit Gimodoe is actually Felicia Torres" or "Felicia Torres is also known as Vussit Gimodoe" for each agent is fine.
=end