require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
anim1 = Animal.new("Tiger", 300, "Terry")
anim2 = Animal.new("Bear", 500, "Berry")
anim3 = Animal.new("Rabbit", 800, "Harry")
anim4 = Animal.new("Bear", 600, "Ferry")

zoo1 = Zoo.new("Fair Zoo", "NY")
zoo2 = Zoo.new("Loopin Zoo", "PA")
zoo3 = Zoo.new("Trailburn Animal Collective", "NY")

anim1.zoo = zoo1
anim2.zoo = zoo2
anim3.zoo = zoo3
anim4.zoo = zoo2

Zoo.all

zoo1.animals
zoo2.animal_species
zoo2.find_by_species("Bear")
zoo3.animal_nicknames
Zoo.find_by_location("NY")

Animal.all
anim3.zoo
Animal.find_by_species("Bear")

binding.pry
puts "done"
