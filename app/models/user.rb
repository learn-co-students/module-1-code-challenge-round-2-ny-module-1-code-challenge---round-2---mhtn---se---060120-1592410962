class User < ActiveRecord::Base
    has_many :readings
    has_many :books, through: :readings 

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

    def authors
        Reading.all.select do |book|
            book.authors == self
        end 
    end

end