require 'pry'
class Zoo
  attr_accessor :name, :location

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select do |animal|
      animal.zoo == self
    end
  end


  def find_by_species(species)
    Animal.all.select do |animal|
      animal.species == species
    end
  end

  def animal_species
    Animal.all.map do |animal|
      if animal.zoo == self
        animal.species
      end
    end.compact.uniq
  end


  def animal_nicknames
    Animal.all.map do |animal|
      if animal.zoo == self
        animal.nickname
      end
    end.compact.uniq

  end

  def self.find_by_location(location)
    Zoo.all.select do |zoo|
      zoo.location == location
    end

  end

end
