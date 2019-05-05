require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

#zoo objects
sf_zoo = Zoo.new("San Fransisco Zoo", "San Fransisco")
woodland_park_zoo = Zoo.new("Woodland Park Zoo", "Seattle")
san_diego_zoo = Zoo.new("San Diego Zoo", "San Diego")
happy_hollow_zoo = Zoo.new("Happy Hollow Zoo", "San Jose")
private_zoo = Zoo.new("My Private Zoo", "San Jose")

#animal objects
lemur = Animal.new("lemur", 29, "Cutie", sf_zoo)
lemur2 = Animal.new("lemur", 28, "Cutie Pie", sf_zoo)
tiger = Animal.new("tiger", 450, "Stripes", sf_zoo)
elephant = Animal.new("elephant", 12000, "Wrinkles", woodland_park_zoo)
lion = Animal.new("lion", 500, "Roary", woodland_park_zoo)
bear = Animal.new("bear", 350, "Fuzzy", san_diego_zoo)
zebra = Animal.new("zebra", 350, "Oreo", san_diego_zoo)
goat = Animal.new("goat", 25, "Hungry", happy_hollow_zoo)
meerkat = Animal.new("meerkat", 7, "Sneaky", happy_hollow_zoo)
meerkat2 = Animal.new("meerkat", 7, "Alarmist", happy_hollow_zoo)

#other zoo methods
all_zoos = Zoo.all
animals_at_zoo = happy_hollow_zoo.animals
all_species_at_zoo = sf_zoo.animal_species
all_animals_of_species = sf_zoo.find_by_species("lemur")
nicknames = happy_hollow_zoo.animal_nicknames
by_location = Zoo.find_by_location("San Jose")

#other animal methods
all_animals = Animal.all
find_species = Animal.find_by_species("meerkat")

binding.pry
puts "done"
