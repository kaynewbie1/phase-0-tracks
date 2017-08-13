# WORD GUESS GAME
# Def Initialize (word) ( setup information that makes an instance of class unique)
# • Every instance of the game needs to have the following
# • Play instructions
# • Word
# o Does instance variable need to be accessed outside of class?
# o Does instance variable need to be changed outside of class?

# #player_1 – Starts Game by inputting string
#(data type: string)
# puts "Welcome To Guess My Word"
# puts "Enter a word to start game. Remember: don't let player 2 see your word"
# #input = gets.chomp
# # • #Capture player_1 input and store in a variable
# word = gets.chomp
# puts "Here is the word you want player 2 to guess: #{word}"

# #Convert to array?
# #Determine # of guesses allowed based on the entered word length
# guess_limit = word.length
# puts "Player 2: Are you ready to guess the word? Here is a hint, the word has #{word.length} letters. You have #{word.length} to guess the word. Good luck!"
# puts "What is your first guess"



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

class WordGame

  def initialize
    puts "Welcome To Guess My Word"
     puts "*" * 30
     @word
     @guess = []
     @repeated_guessed_letters = []
     @correct_letters = []
     @guess_input_count = 0
     @total_guesses = 0
     @guesses_remaining = 0
     @letter_input
     @allowed_guesses = 0
     #@current_word
     @word_length = 0
     #@correct_letters = Array.new(@word_length.length, "_" )
  end

  def word=(word)
    @word
  end

def input_word (word)
  puts "Enter a word to start game. Remember: don't let player 2 see your word"
  #input = gets.chomp
  #Capture player_1 input and store in a variable
  @word = gets.chomp.downcase
  #get count of word_length
  @word_length = @word.length
  puts "Here is the word you want player 2 to guess: #{@word}"
end

# #limit amout of guesses to length of word input by player 1 @letter_input.length
# def track_guesses
#   @allowed_guesses = @word_length
#   p allowed_guesses
#   @total_guesses = @allowed_guesses - letter_collection.to_s.length
#   @guesses_remaining = @word_length - @total_guesses
#   #@guesses_remaining = @letter_input.length
#   p track_guesses
# end


#track total guesses by getting length of array
  def track_guesses
    @total_guesses = letter_collection.length
    #calculate allowed guesses
    @allowed_guesses = @word_length
    #@total_guesses = @allowed_guesses - letter_collection.to_s.length
    @guesses_remaining = @allowed_guesses - @total_guesses
   #@guesses_remaining = @letter_input.length
 end

def guess_word
  puts "Player 2: Are you ready to guess the word? Here is a hint, the word has #{@word.length} letters. You have #{@word.length} tries to guess the word. Good luck!"
  puts "Input your first letter"
 # put letters input into an array
  letter_collection = []
  @letter_input = gets.chomp.chars
  letter_collection << @letter_input
  p letter_collection #test to confirm array is building
    #do I need to put @total_guesses = 0 here again for the while loop even though I have it in initialize?
    @total_guesses = 0
    while @total_guesses <= @allowed_guesses #|| @word
      @total_guesses = letter_collection.length
      @allowed_guesses = @word_length
      @guesses_remaining = @allowed_guesses - @total_guesses
      #<= @guesses_remaining
      puts "You have #{@guesses_remaining} guesses left."
      puts "What is your next letter?"
      #puts "Word: #{@correct_letters.join(" ")}"
      @letter_input = gets.chomp.chars
      # guess_limit = word.length
      letter_collection << @letter_input
      p letter_collection #test to confirm array is building

        @total_guesses +=1 #gets total_guess count each loop to avoid infinite loop
        if @guesses_remaining == 0 #&& @word.split('') == letter_collection
          puts "You have no more guesses. The word was #{@word}."
          #else letter_collection.join("") == @word
          #   puts "CONGRATULATIONS! You guessed the mystery word: #{@word} in #{@total_guesses} guesses!"
        elsif @word.split(//) == letter_collection
          puts "CONGRATULATIONS! You guessed the mystery word: #{@word} in #{@total_guesses} guesses!"

        elsif letter_collection.include?(@letter_input)
          puts "#{@letter_input} is in the word. Guess more letters"
      end
    end
  end
#Repeated guesses do not count against the user.
def repeat_letter_checker
  if
    letter_collection.include?(@letter_input)
    @guesses_remaining = !(@allowed_guesses - @total_guesses)
#if letter input is in the letter collection arrary, then do not subtract from guesses remaining. figured I would use the ! bang operator..not sure if I can do this.
end
end

end



=begin
The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
=end
#I can't figure out how to show dashed lines
#can't figure out how to put the letters in the right place, assume covert the letter_input to an index and then replece it with the converted index of the dash in the  letter_collection..not sure

test = WordGame.new
test.input_word("jackson")
test.guess_word


