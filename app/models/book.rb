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
        Reading.all.select do |reading|
            reading.book == self
        end
    end

    def reader_names
        readings.map do |reading|
            reading.user
        end
    end

end