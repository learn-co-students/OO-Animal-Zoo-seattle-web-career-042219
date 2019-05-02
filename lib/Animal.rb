class Animal
    attr_accessor :nickname, :species, :weight
    @@all = []
    def initialize(nickname, species, weight, zoo)
        @nickname = nickname
        @species = species
        @weight = weight
        @zoo = zoo
        @zoo.animals << self
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        animal_name = []
        @@all.select{|animal|
            if animal.species == species
                animal_name << animal.nickname
            end
        }
        return animal_name
    end
end
