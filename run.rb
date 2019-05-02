require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new('Seattle Public', 'Seattle')
zoo2 = Zoo.new('Vancouver Zoo', 'Vancouver')
#zoo3 = Zoo.new('Vancouver Zoo', 'Vancouver')
#zoo4 = Zoo.new('Vancouver Zoo', 'Vancouver')

animal1 = Animal.new('Rocket', 'Racoon', '70lbs', zoo1)
animal2 = Animal.new('Fire', 'Fox', '50lbs', zoo1)
animal3 = Animal.new('Milk', 'Buck', '230lbs', zoo2)
animal4 = Animal.new('Toro', 'Raptor', '225lbs', zoo1)
animal5 = Animal.new('AD', 'Bird', '240lbs', zoo2)


binding.pry
puts "done"
