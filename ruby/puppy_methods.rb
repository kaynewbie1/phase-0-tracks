class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    integer.times do |i|
      puts "woof"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(integer)
    dog_years = integer * 10
    dog_years
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end

end

fido = Puppy.new
fido.fetch("ball")
fido.fetch(2)
fido.speak(4)
fido.roll_over
p fido.dog_years(10)


class Cat

  def initialize
    puts "Puuuuuuurrrrrrr"
  end

  def litter_box(integer)
   integer.times do |i|
      puts "Make paws go to the box"
    end
  end
end


#paws.litter_box(3)
cat_instances = []
50.times do ||
  paws = Cat.new
  cat_instances << Cat.new
  end

p cat_instances
cat_instances.each do |cat|
  puts "cat"
  cat.litter_box(3)
end