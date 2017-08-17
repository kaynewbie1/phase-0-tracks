# Write a calculate method that takes three parameters: an integer, an operator string (example: "+"), and another integer. The method should execute the operation and return the result, an integer. The method should be able to handle the +, -, *, and / operations. For example, calculate(4, '+', 5) should return 9.

# Write driver code that tests all four operations and prints the results.





class Calculator
  def add(x, y, z)
    x + y
  end

  def subtract(x,y)
    x - y
  end

  def multiply(x,y)
    x * y
  end
end

# Comment out your driver code and create a user interface for your program: Prompt the user for a calculation that the user would like to perform, and use your method to give the user a result. For instance, if the user types "4 + 5", the program should print a result of 9 and then exit. You can assume correct input on the user's part.





# Update your program to allow the user to do as many calculations as they want (so the user might enter 3 + 4, receive the answer, and then enter 7 - 1 as the next calculation, and so on). When the user types "done" instead of a calculation, the program can exit.




=begin When the user has finished performing calculations, but just before the program exits, print a count of the calculations performed, and a history of all the calculations that have been performed. The printout might look something like this:

3 calculations performed:
4 + 5 = 9
3 - 1 = 2
8 / 2 = 4
There are lots of ways you might do this, but your implementation should involve a data structure.
=end






=begin
So far, we've assumed that the user will faithfully enter the right information. Update your program to handle invalid input, performing the calculation when possible and printing an error when the calculation could not be performed. This is a deliberately broad prompt, and a bonus feature. What sorts of mistakes might your user make? How can you accommodate those mistakes
=end