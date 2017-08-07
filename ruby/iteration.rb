=begin
In phase-0-tracks/ruby/iteration.rb, write your own method that takes a block. Your method should print out a status message before and after running the block. Your block doesn't have to do anything fancy -- it can just print out several of its own parameters.
=end




=begin
In phase-0-tracks/ruby/iteration.rb, declare an array and a hash, and populate each of them with some data. We don't care what data you use, but it shouldn't be nonsense data -- it should represent a reasonable scenario in which those data structures would be used. (A hash full of random letters and numbers, for instance, is not as meaningful as a hash that associates Hollywood actors with their best-known character.)
=end






=begin
Demonstrate that you can iterate through each one using .each, and then using .map! (modifying the data in some way). Note that you can't call .map! on a hash, so you can skip that (.map returns an array, so a destructive map method is logically impossible on a hash). Print the data structures before and after each call to demonstrate whether they have been modified or not.
=end




=begin
Use the documentation to find other Array and Hash methods that take blocks, and that can accomplish the tasks below, then add sample calls to phase-0-tracks/ruby/iteration.rb -- one for the array, and one for the hash.

You can use simple (nonmeaningful) data for your example calls -- an array of integers or letters would be fine, for instance.

A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

=end