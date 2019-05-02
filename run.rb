require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

sd_zoo = Zoo.new("San Diego Zoo", "San Diego")

tiger = Animal.new('jon', 'tiger', 220, sd_zoo)
tiger_2 = Animal.new('dave', 'tiger', 220, sd_zoo)
dog = Animal.new('poo', 'dog', 220, sd_zoo)

bear = Animal.new('charles', 'bear', 220, sd_zoo)

binding.pry

