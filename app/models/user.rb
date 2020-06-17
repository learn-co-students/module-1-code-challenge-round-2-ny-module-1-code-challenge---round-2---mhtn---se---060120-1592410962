require 'pry'
class User
    attr_accessor :name 
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    
    #returns an array of Reading instances associated with the User instance.
    def readings
        Reading.all.select{|reading| reading.user == self}
    end

    #returns an array of Book instances that the User has read.
    def books_read
        Book.map{|read| read.user}
    end

# a Book instance is passed in as an argument
# User should add that Book instance to it's list of books it has read Books
    def read_book(book)
        
    end

    #returns an array of all User instances that have read more than 2 Books
    def self.scholars
        User.all.select{|read| read > 2}
    end
end

binding.pry
