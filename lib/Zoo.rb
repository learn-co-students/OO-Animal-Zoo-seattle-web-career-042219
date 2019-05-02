class Zoo
  attr_accessor :name, :location, :animals

  @@all = []
  def initialize(name, location)
    @name = name
    @location = location
    @animals = []
    @@all << self
  end

  def new_animal(species, nickname, weight)
    animal = Animal.new(species, nickname, weight, self.name)
    @animals << animal
    animal
  end

  def self.all
    @@all
  end

  def animal_species
    @animals.map{|animal| animal.species}.uniq
  end

  def find_by_species(species)
    @animals.select{|animal| animal.species == species}
  end

  def animal_nicknames
    @animals.map{|animal| animal.nickname}
  end

  def self.find_by_location(location)
    @@all.find_all{|zoo| zoo.location == location }
  end

end
