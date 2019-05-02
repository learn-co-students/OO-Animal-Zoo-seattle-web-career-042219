
class Animal
attr_accessor :weight, :zoo
attr_reader :nickname, :species
@@all = []

def self.all
@@all
end

def self.find_by_species(species)
@@all.find_all{|animal|animal.species==species}
end


def initialize(species, weight, nickname)
@species = species
@weight = weight
@nickname = nickname
@@all<< self
end
end
