class Animal
  attr_accessor :weight
  attr_reader :species, :nickname
  @@all = []

  def initialize(species, nickname, weight, zoo_name)
    @species = species
    @nickname = nickname
    @weight = weight
    @zoo_name = zoo_name
    @@all << self
  end

  def zoo
    Zoo.all.find{|zoo| zoo.name == @zoo_name}
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    @@all.select {|animal| animal.species == species}
  end

end
