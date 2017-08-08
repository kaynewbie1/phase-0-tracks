=begin
In phase-0-tracks/ruby/iteration.rb, write your own method that takes a block. Your method should print out a status message before and after running the block. Your block doesn't have to do anything fancy -- it can just print out several of its own parameters.
=end

def family_love
  puts "I love my entire family"
  yield("Diamond", "Noir", "Dusty", "Toby")
  puts "That is what family is all about!"
end
family_love { |pet1, pet2, pet3, pet4| puts "And we also love all of our pets #{pet1} and #{pet3} and we will never forget #{pet2} and #{pet4}" }


=begin
In phase-0-tracks/ruby/iteration.rb, declare an array and a hash, and populate each of them with some data. We don't care what data you use, but it shouldn't be nonsense data -- it should represent a reasonable scenario in which those data structures would be used. (A hash full of random letters and numbers, for instance, is not as meaningful as a hash that associates Hollywood actors with their best-known character.)


current_patients = ["patient_1", "patient_2", "patient_3", "patient_4"]
puts "Current Patients"
p current_patients

#iterate through the array with .each
=begin
current_patients.each { |patient| puts "We love: #{patients}" }


bed_assignments = {
  "bed_1" => 'Kanen',
  "bed_2" => 'Ghost',
  "bed_3" => 'Tommy',
  "bed_4" => 'Kiesha'
}
p bed_assignments


bed_assignments = {
   bed_1: "Kanen",
   bed_2: "Ghost",
   bed_3: "Tommy",
   bed_4: 1
}
p bed_assignments
=end

current_patients = ["patient_1", "patient_2", "patient_3", "patient_4"]
puts "Current Patients"
p current_patients

food_assignments = {}
current_patients.each do |patient|
  food_assignments[patient] = "spaghetti"

end
puts
p food_assignments











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