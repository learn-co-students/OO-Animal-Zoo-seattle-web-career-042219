require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("Happy Zoo", "Seattle")
zoo2 = Zoo.new("Bad Zoo", "Tacoma")

zebra = zoo1.new_animal('zebra', 'COOL Zebra', 12)
zebra1 = zoo1.new_animal('dog', 'VERY COOL Zebra', 13)

binding.pry
puts "done"
