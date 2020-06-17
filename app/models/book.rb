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

    def readings
      Reading.all.select do |reads|
        reads.book == self
      end
    end

    def reader_names
      User.all.select do |user|
        user.name == self
      end
    end

end
