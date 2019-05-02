class Zoo
attr_accessor :location, :name, :animals
    @@all = []
    def initialize(name, location)
        @location = location
        @name = name
        @@all << self
        @animals = []
    end

    def self.all
        @@all
    end

    def self.find_by_location(location)
        @@all.select{|zoo|
            zoo.location == location
        }
    end


    def animals_species
       self.animals.map{|animal|
            animal.species
       }.uniq
    end

    def find_by_species(species)
        animal_name = []
        self.animals.select{|animal|
            if animal.species == species
                animal_name << animal.nickname
            end
        }
        return animal_name
    end

    def animal_nicknames
        self.animals.map{|animal|
            animal.nickname
        }
    end

end
