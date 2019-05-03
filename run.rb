require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

tiger = Animal.new("tiger", 80, "Bob")
bear = Animal.new("bear", 200, "Smokey")
hippo = Animal.new("hippo", 500, "Hungry")
panda = Animal.new("panda", 90, "Jill")
panda_2 = Animal.new("panda", 50, "Jack")

dc = Zoo.new("National Zoo", "DC")
bx = Zoo.new("Bronx Zoo", "NYC")
bk = Zoo.new("Brooklyn Zoo", "NYC")

panda.zoo = dc
hippo.zoo = bx
bear.zoo = dc
tiger.zoo = bx


binding.pry
puts "done"
