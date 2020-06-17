class Book

    attr_reader :title #reader because title cannot be changed 

    @@all = []

    def initialize(title)
        @title = title
        @@all << self 
    end

    def self.all
        @@all 
    end 
end