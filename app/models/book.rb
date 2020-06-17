class Book
    attr_accessor :title
    @@all=[]
    def initialize(title)
        @title=title 
        @@all<<self
        
    end

    def self.all 
        @@all 
    end 

    def readings
        Reading.all
        end
    end 

    def reader_names
        User.all.select do |user|
            self==book.user
        end 
    end 





    
end