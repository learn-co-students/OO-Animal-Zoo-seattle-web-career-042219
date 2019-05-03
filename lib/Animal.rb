class Animal
  attr_accessor :species, :weight, :nickname, :zoo

  @@all = []

  def initialize(species, weight, nickname)
    @species = species
    @weight = weight
    @nickname = nickname
    @@all << self
  end


  def self.find_by_species(species)
    Animal.all.select do |animal|
      animal.species == species
    end

  end

  def self.all
    @@all
  end


end
