=begin
In phase-0-tracks/ruby/iteration.rb, write your own method that takes a block. Your method should print out a status message before and after running the block. Your block doesn't have to do anything fancy -- it can just print out several of its own parameters.
=end

def family_love
  puts "I love my entire family"
  yield("Diamond", "Noir", "Dusty", "Toby")
  puts "made to other side of block"
end
family_love { |pet1, pet2, pet3, pet4| puts "And we also love all of our pets #{pet1} and #{pet3} and we will never forget #{pet2} and #{pet4}" }
#p family_love


=begin
In phase-0-tracks/ruby/iteration.rb, declare an array and a hash, and populate each of them with some data. We don't care what data you use, but it shouldn't be nonsense data -- it should represent a reasonable scenario in which those data structures would be used. (A hash full of random letters and numbers, for instance, is not as meaningful as a hash that associates Hollywood actors with their best-known character.)
=end


current_patients = ["patient_1", "patient_2", "patient_3", "patient_4"]
puts "Current Patients"
p current_patients

#iterate through the array with .each

current_patients.each { |patient| puts "We love: #{patient}" }
p current_patients
new_patients = []
current_patients.each do |patient|
  new_patient = patient + "!"
  new_patients << new_patient
  #return patient
end
p new_patients

#iterate through the hash with .each

bed_assignments = {
   bed_1: "Kanen",
   bed_2: "Ghost",
   bed_3: "Tommy",
   bed_4: "Tarik"
}
p bed_assignments

bed_assignments.each do |bed, patient|
  puts "#{bed} is assigned to #{patient}"
end

=begin
current_patients = ["patient_1", "patient_2", "patient_3", "patient_4"]
puts "Current Patients"
p current_patients

food_assignments = {}
current_patients.each do |patient|
  food_assignments[patient] = "spaghetti"

end
puts
p food_assignments
=end

=begin
Demonstrate that you can iterate through each one using .each, and then using .map! (modifying the data in some way). Note that you can't call .map! on a hash, so you can skip that (.map returns an array, so a destructive map method is logically impossible on a hash). Print the data structures before and after each call to demonstrate whether they have been modified or not.
=end

current_patients = ["patient_1", "patient_2", "patient_3", "patient_4"]
puts "Current Patients"
p current_patients

#use .map to iterate through an array
current_patients.map do |patient|
  puts patient
end
puts "Array after .map call:"
p current_patients

current_patients.map! do |patient|
  puts patient
  patient.next
end
puts "Array after .map! call:"
p current_patients

food_assignments = {}
current_patients.each do |patient|
  food_assignments[patient] = "spaghetti"
end
puts "Hash after .each call"
p food_assignments



a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
dogs = {poodle: 3, hound: 4, yorkie: 8, maltese:2 }
=begin
Use the documentation to find other Array and Hash methods that take blocks, and that can accomplish the tasks below, then add sample calls to phase-0-tracks/ruby/iteration.rb -- one for the array, and one for the hash. You can use simple (nonmeaningful) data for your example calls -- an array of integers or letters would be fine, for instance.

A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
=end
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.delete_if {|number| number > 5}
puts "After .delete call:"
p a

=begin
A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
=end
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.delete_if { |number| number < 5 }
puts "After .delete call:"
p a

=begin
A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
=end

highschoolers = ["freshman", "sophmore", "junior", "senior"] highschoolers.keep_if { |year| year != 'senior' }
puts "After .keep call:"
p highschoolers

=begin
a = ["a", "b", "c", "d", "e"]
a.push("f", "g", "h")
puts "After .push call:"
p a
=end
b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
b.drop_while { |i| i < 10 }
puts "After .drop_while call:"
p b

=begin
A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
=end