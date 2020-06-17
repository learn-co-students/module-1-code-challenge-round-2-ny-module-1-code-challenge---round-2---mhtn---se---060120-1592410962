class Book
    attr_reader :title
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    #returns an array of all the Reading instances for the Book.
    def readings
        Reading.all.select{|reading| reading.book == self}
    end

    #returns an array of the names of all the Users who have read the Book.
    def reader_names
        self.users.map{|user|user.name}
    end
    
end


# book1 = Book.new("Life")
# book2 = Book.new("Death")