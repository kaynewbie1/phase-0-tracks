# WORD GUESS GAME
# Def Initialize (word) ( setup information that makes an instance of class unique)
# • Every instance of the game needs to have the following
# • Play instructions
# • Word
# o Does instance variable need to be accessed outside of class?
# o Does instance variable need to be changed outside of class?

# #player_1 – Starts Game by inputting string
#(data type: string)
puts “Welcome to “Guess My Word”
print "Enter a word to start game. Remember: don't let player 2 see your word"
input = gets
# • #Capture player_1 input and store in a variable
# o word = input.chomp
# puts “Here is the word you want them to guess: #{word}”
# • Convert
# • Determine # of guesses allowed based on the entered word length
# o

# #Prompt 2nd user to guess word
# • Show an underscore for each letter in the word input by player 1
# o see how many letters are in the word and turn them into underscores
# • Print “Make a guess by typing a letter. The word has  #{word_length} letters”
# guess = gets.chomp.to_i
# puts guess  < word.length
# •
# Keep track of guesses input by player2
# o collect guesses and place in an array
# o keep track of how many guesses made, and create a variable named num_guesses that’s set to 0 initially num_guesses =0
# o Determine if letter input by player2 matches a letter in the word
# ♣ If player guesses a letter correctly

# • find position of that letter in the original word and take the underscore in that position and store guesses – one letter at a time – and display letter to user in the correct position
# ♣ Else, if letter does not match a letter in the word,
# • keep track of how many guesses made, and create a variable named num_guesses that’s set to 0 initially num_guesses =0
# ♣ if letter input by player 2 is a letter they input before don’t deduct it from # of remaining guesses
# ♣ Keep doing this until all letters are correctly guessed within the allowed # of guesses
# • If guessed correctly, puts “Congratulations”
# ♣ If number of guesses is greater than length of word then notify player puts “You have exceeded # of guesses, game is over, try again”
# Keep count of remaining guesses and display to player2
# •
# • remaining_guesses = word_length – num_guesses
# puts “You’ve got #{remaining_guesses} +  guesses left.”
# NOTE: you will need to replace the integer above with word_length since the number of guesses allowed is the length of the word input by player 1

# User Guesses
# • guesses can’t exceed length of word that user input
# • compare user 1 input to 2nd users guesses
# • an underscore for each letter in the word see how many letters are in the word and turn them into underscores
# • as player guesses letter correctly, find position of that letter in the original word and take the underscore in that position and turn it into a letter
# Method – is game over

# Track how many guesses the player has made: num_guesses = 0
# Track whether the player has guessed correctly: guessed_it  =  false

# While num_guesses  <  word_length  &&  guessed_it  == false
#   Puts “You’ve got #{guesses_remaining} guesses left.”
# print “Make another guess:”
# guess = gets.to_i
# num_guesses +=1
# #compare the guess to the target.
# #Print the appropriate message
# if guess != character in word
# puts “Oops. Not a letter in the word, try again.”
# Elseif guess == character in word
# Puts “you guessed a letter, keep going”
# End

# If player ran out of turns, tell them the word was
# Unless guessed_it
# Puts “Sorry. You didn’t guess the word in time. (It was #{word}.)”
# end

# or I can put in place of while an until to be more clean
# until num_guesses == word.length || guessed it
# …..
# end



# driver code

