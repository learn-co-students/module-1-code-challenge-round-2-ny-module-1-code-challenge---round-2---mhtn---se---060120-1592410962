class Book
    attr_accessor :title, :author
    @@all=[]
    def initialize(title, author)
        @title=title 
        @author=author
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

    def authors
        Author.all 
    end

    def author_names
        Author.all.select do |book|
            self==book.author 
        end 






    
end