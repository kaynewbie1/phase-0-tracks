# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")

# steps:
def create_list_items(input_string)

 hsh = {}

 # create an array containing each item
 array_input = input_string.split(' ')

 # create a hash from the array (iterate), containing the information of key/value pairs
 array_input.each do |item|
   # set default quantity as value
   hsh[item] = 0
 end

 # print the list to the console (we will use the last method)
 print_list(hsh)

 # output: hash data structure of key/value pairs
 return hsh
end

# Method to add an item to a list
# input: list, item name, and optional quantity
def add_item(input_hash, item, qty = 0)
# steps: use input item as key and input quantity as value
 input_hash[item] = qty
# output: hash data structure of key/value pairs
 return input_hash
end

# Method to remove an item from the list
def remove_item(input_hash, item)
# input: list, item name, and optional quantity
# steps: use input item to delete key
 input_hash.delete(item)
# output: hash data structure of key/value pairs
return input_hash
end

# Method to update the quantity of an item
# input:list, item name, and quantity
def update_quantity(input_hash, item, qty)
# steps: use input item as key and input quantity as value
# output: hash
 input_hash[item] = qty

return input_hash
end

# Method to print a list and make it look pretty
# input: a hash containing the information
def print_list(input_hash)
# steps: iterate through the hash and print keys/values
 puts "Here are the items on your list"
 input_hash.each do |item, qty|
   p "For item #{item}, we have #{qty}"
 end
# output: nil
end

hsh = create_list_items("carrots apples cereal pizza")
hsh = add_item(hsh, "Lemonade",  2)
hsh = add_item(hsh, "Tomatoes",  3)
hsh = add_item(hsh, "Onions",  1)
hsh = add_item(hsh, "Ice cream",  4)


hsh = remove_item(hsh, "Lemonade")
hsh = remove_item(hsh, "Lemonade")
hsh = update_quantity(hsh, "Ice cream", 1)
print_list(hsh)


=begin
What did you learn about pseudocode from working on this challenge? That is important to put the steps that you are going to take to write the code. I also better understand how to write out what the "output" will be in psuedocode as I was doing it incorrectly before. Thanks Shawn.

What are the tradeoffs of using arrays and hashes for this challenge?
Not sure I understand the question, but both were useful in their own right.  I can see the benefits of both and why I would use one over the other. However, it is easier to maniuplate data in an array than in a hash, at least in my opinon. but that could also be due to my new learning and understanding of both.

What does a method return? it returns an object at minimum, nil.
What kind of things can you pass into methods as arguments?
How can you pass information between methods?
What concepts were solidified in this challenge, and what concepts are still confusing?

=end
