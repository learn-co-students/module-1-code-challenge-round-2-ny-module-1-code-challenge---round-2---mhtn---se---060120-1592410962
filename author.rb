class Author
    attr_accessor :book
    @@all=[]

def initialize(book)
    @book=book 
    @@all<<self 
end 

def books
    Book.all 
end 

def book_titles
    Book.all.select do |book|
        self==book.author 
    end
end 

    def customers
       User.all.select do |author|
        self==user.book.author 
       end 
    end 

    def profile
    end 

    def most_prolific
        max= -1
        self.all.each do |book|
            if max<self.all.book
                max==self.all.book 
            end 
        end 
        max 
    end 
    end 




