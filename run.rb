require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

z1 = Zoo.new("Adam's Zoo", "Atlanta")
z2 = Zoo.new("Brittany's Zoo", "Boston")
z3 = Zoo.new("Carl's Zoo", "Cleveland")

a1 = Animal.new("Xerus", 5, "Xavier", z1)
a2 = Animal.new("Yak", 4000, "Yvette", z2)
a3 = Animal.new("Zebra", 500, "Zak", z3)

Pry.start
puts "done"
