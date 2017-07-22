def encrypt(password) #names method, declares parameter
  new_pass = ""
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < password.length
    index_in_alpha =  alphabet.index(password[index]) #integer
      if index_in_alpha == 25
        new_index = 0
      else
        new_index = index_in_alpha + 1
      end
    new_pass += alphabet[new_index]

    index += 1
  end
  new_pass #return
end

encrypt("zed") #invoke the methods

def decrypt(password)

  new_pass = ""
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  while index < password.length
    index_in_alpha =  alphabet.index(password[index]) #integer
       new_index = index_in_alpha - 1
    new_pass += alphabet[new_index]
    index += 1
  end
  new_pass #return
end

decrypt("afe")

decrypt(encrypt("abc"))
# the encrypt method is called first and moves the index forward one, then the decrypt method is called on the encrypted text and moves the index back one.

# Driver code

#Psuedocode
#Ask user if they want to encrypt or decrypt.
#Create a variable for response (not encrypt or decrypt)
#Capture response and apply appropriate method
#Ask user for the password
#Capture response and use selected method
#Print results to screen

puts "Do you want to encrypt or decrypt your password?"
encoding_type = gets.chomp

   if encoding_type == "encrypt"
      puts "What is your password?"
      password = gets.chomp
      puts encrypt(password)

    else encoding_type == "decrypt"
      puts "What is your password?"
      password = gets.chomp
      puts decrypt(password)

    end



