class Animal
  attr_accessor :weight, :zoo
  attr_reader :nickname, :species

  @@all = []

  def initialize(nickname, species, weight, zoo)
    @nickname = nickname
    @species = species
    @weight = weight
    @zoo = zoo
    @@all << self
    @zoo.animals << self
  end

  def self.all
    @@all
  end

  def self.find_by_species(species)
    self.all.select {|animal| animal.species == species}
  end

end
