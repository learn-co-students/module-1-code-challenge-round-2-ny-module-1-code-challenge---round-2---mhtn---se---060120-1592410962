class Reading
    attr_reader :book
    attr_accessor :user
    @@all = []
    def initialize(user, book)
        @user = user
        @book = book
        @@all << self
    end

    def self.all
        @@all
    end
    
end