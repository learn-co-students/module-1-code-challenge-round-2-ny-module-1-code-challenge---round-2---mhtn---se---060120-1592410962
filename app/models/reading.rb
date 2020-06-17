class Reading
  @@all = []
  attr_accessor :user, :book

    def initialize(user, book)
      @book = book
      @user = user
      @@all << self
    end

    def self.all
      @@all
    end

end
