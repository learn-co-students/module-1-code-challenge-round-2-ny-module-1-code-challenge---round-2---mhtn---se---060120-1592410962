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

    def readings
        Reading.all.select do |reading|
            reading.user == self
        end
    end

    def books_read
        readings.map do |reading|
            reading.book
        end
    end

    def read_book(book)
        Reading.new(self,book)
    end

    def self.scholars
        self.all.select do |user|
            user.books_read.count > 2
        end.uniq
    end

end