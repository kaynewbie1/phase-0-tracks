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
  p new_pass #return
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
  p new_pass #return
end

decrypt("afe")

decrypt(encrypt("abc"))
# the encrypt method is called first and moves the index forward one, then the decrypt method is called on the encrypted text and moves the index back one.