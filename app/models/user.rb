class User

    attr_accessor :name #accessor so we can read the user name AND change it 
    
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self  
    end

    def self.all
        @@all 
    end 

end