

class Zoo

  @@all = []

  attr_accessor :name, :location

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select do |animal_obj|
      animal_obj.zoo == self
    end
    #should return all the animals that a specific instance of a zoo has.
  end

  def animal_species
    species_ary = []
    Animal.all.each do |animal_obj|
      if animal_obj.zoo == self
        species_ary << animal_obj.species
      end
    end
    species_ary.uniq
    #should return an array of all the species (as strings) of the
    #animals in the zoo. However, if you have two dogs, it should only return one "Dog"
    #string (aka an unique array).
  end

  def find_by_species(species)
    Animal.all.select do |animal_obj|
      animal_obj.zoo == self && animal_obj.species == species
    end
    #should take in an animal's species as an argument and return an array
    #of all the animals in that zoo, which are of that species.
  end

  def animal_nicknames
    an_ary = []
    Animal.all.each do |animal_obj|
      if animal_obj.zoo == self
        an_ary << animal_obj.nickname
      end
    end
    an_ary
    #should return an array of all the nicknames of animals that a specific
    #instance of a zoo has.
end

  def self.find_by_location(location)
    @@all.select do |zoo_obj|
      zoo_obj.location == location
    end
    #should take in a location as an argument and return an array of all the zoos
    #within that location.
  end

end


###############################
