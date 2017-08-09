=begin
In phase-0-tracks/ruby/nested_data_structures.rb, design and build a nested data structure to represent a real-world construct. You can choose the construct: Is it a highway full of cars full of people? A classroom full of desks full of supplies? A fashion show with multiple runways featuring multiple models? Build something that will use a mix of hashes and arrays.
=end

apt_building = {
  floor_1:  {
    floor_type: 'Luxury',
    total_units: 6,
    unit_details: {
      occupied_units: ['2a', '3a', '4a'],
      vacant_units: ['1a', '5a', '6a']
    },
    pet_units: {
        apt_2a: 'pitbull',
        apt_4a: 'yorkie',
        apt_6a: 'maltese'
    },
  },
  floor_2:  {
    floor_type: 'No Pets',
    total_units: 6,
    unit_details: {
      occupied_units: ['6a', '2a', '1a'],
      vacant_units: ['3a', '4a', '5a']
    },
    pet_units: {
        apt_6a: 'poodle',

    },
  },
  floor_3:  {
    floor_type: 'Economy',
    total_units: 6,
    unit_details: {
      occupied_units: ['1a', '2a', '3a', '4a', '5a', '6a'],
      vacant_units: []
    },
    pet_units: {},
  }
}

p apt_building

=begin
Once you've built it, print a few individual pieces of deeply nested data from the structure, showing that you know how to use multiple indexes or hash keys (or both) to access nested items. Try to demonstrate a few different types of access.
=end
puts "this is first printing test"
#what is type of floor is floor 3?
puts apt_building[:floor_3][:floor_type]
#what apartments on floor 2 have pets and what kind?
p apt_building[:floor_2][:pet_units]

#On Floor 3, unit 2a is now vacant, remove it from occupied units array and add it to vacant units array
#is there an easier way to do this?
p apt_building[:floor_3][:unit_details][:occupied_units].delete_if {|unit| unit == '2a'}
p apt_building[:floor_3][:unit_details][:vacant_units].push('2a')


# add pets to floor 3 - how do I add a key/value to an existing hash in a nested data structure? note, the below works but don't believe it is adding as a key value pair.
p apt_building[:floor_3][:pet_units] = 'apt_1a', 'doberman'
p apt_building[:floor_3][:pet_units]