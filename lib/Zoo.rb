class Zoo
attr_accessor :name, :location
@@all = []

def initialize(name, location)
@name = name
@location = location
@@all<< self
end

def self.all
@all
end

def animals
Animal.all.select{|animal| animal.zoo ==self}
end

def animal_species
Animal.all.map{|animal| animal.species if animal.zoo ==self}.compact
end

def animal_nicknames
a = Animal.all.select{|animal|animal.zoo == self}
a.map{|animal|animal.nickname}
end

def self.find_by_location(location)
@@all.select{|zoo|zoo.location ==location}
end

def find_by_species(species_type)
Animal.all.map{|animal|animal if animal.species == species_type && animal.zoo ==self}.compact
end

end
