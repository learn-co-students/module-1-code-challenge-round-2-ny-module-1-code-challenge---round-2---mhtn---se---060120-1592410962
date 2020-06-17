class User
  @@all = []

  attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
      @@all
    end

    def readings
      Reading.all.select do |user|
        user.reading == self
      end
    end

    def books_read
      readings.map do |user|
        user.book
      end
    end

    # def read_book(book)
    #
    # end

    # def self.scholars

    # end
    # Will Come Back to These Deliverables in part 2
end
