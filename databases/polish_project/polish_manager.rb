#Nail Polish Manager

#require gems
require 'sqlite3'
#require_paths= ["lib/sqlite3_native"]

#create a database
db = SQLite3::Database.new("polish.db")

#create table
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS polish(
    id INTEGER PRIMARY KEY,
    brand VARCHAR(255),
    polish_name VARCHAR(255)
  )
SQL

# create a polish table (if it's not there already)
db.execute(create_table_cmd)

#add first polish to confirm table setup works
  #db.execute("INSERT INTO polish (brand, polish_name) VALUES ('OPI', 'PETAL SOFT')")

puts "What would you like to do to day today?"
puts "-- Type 'View' to display all polish."
puts "-- Type 'Add' to add a new color."
response = gets.chomp.downcase

case response
  when "add"
  #if response == "Add" #take response from user input
    puts "Enter Polish Name"
    name = gets.chomp #collect polish name
  #Check polish database to see if polish already exist??
    rows = db.execute('SELECT * FROM polish WHERE polish_name = ?', name)
    if rows.length > 0
      puts "You already have this polish #{name}"
      #return false
    else
    #If polish don't exist, collect remaining data to add polish
    puts "Enter Brand (e.g. OPI, ESSIE, etc.)"
    brand = gets.chomp.downcase
      db.execute("INSERT INTO polish (brand, polish_name) VALUES (?, ?)", [brand, name])
      puts "You added the following polish to your inventory: brand: #{brand} and polish name: #{name}, "
  #else
    #puts "Error"
  end
#end

  when "view"
  puts "Here is a list of all available polish: "
  #   #Will show user list of polish_names and brands from database
  # how to display items in polish database using ruby to user
  report = db.execute('SELECT * FROM polish')
    #sub_array.each do | y |
    p report
  end


