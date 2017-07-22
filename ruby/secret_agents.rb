def encrypt(password) #names method, declares parameter
  new_pass = ""
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < password.length
    p index_in_alpha =  alphabet.index(password[index]) #integer
      if index_in_alpha == 25
        new_index = 0
      else
        new_index = index_in_alpha + 1
      end
    p new_pass += alphabet[new_index]

    index += 1
  end
  new_pass #return
end

encrypt("abc") #invoke the methods

def decrypt(password)

  new_pass = ""
  index = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  while index < password.length
    index_in_alpha =  alphabet.index(password[index]) #integer
       p new_index = index_in_alpha - 1
    new_pass += alphabet[new_index]
    index += 1
  end
  new_pass #return
end

decrypt("abc")