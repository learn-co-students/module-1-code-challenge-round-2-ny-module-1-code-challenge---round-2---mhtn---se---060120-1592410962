class Reading
    attr_accessor :user, :book

    @@all = []

    def initialize(user,book)
        @user = user
        @book = book
        @@all << self
    end

    def self.all
        @@all
    end

end