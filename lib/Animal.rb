
class Animal

  @@all = []

  attr_accessor :weight
  attr_reader :species, :nickname, :zoo

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    @@all.select do |animal_obj|
      animal_obj.species == species
    end
    #should take in an animal's species as an argument and
    #return an array of all the animals, which are of that species.
  end

end
