class User
    attr_accessor :name
    @@all=[]
    def initialize(name)
        @name=name
        @@all<<self 
        
    end
    def self.all
        @@all 
    end 

    def readings
        Reading.all 
    end 

    def books_read
        Book.all.select do |book|
            self==user.book 
        end 
    end 

end