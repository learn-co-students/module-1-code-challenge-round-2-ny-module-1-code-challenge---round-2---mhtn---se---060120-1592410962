class Author < ActiveRecord::Base
    has_many :book_authors
    has_many :books, through: :book_authors 

    def book_titles
        books.map do |book|
            book.title
        end.uniq
    end

    def customers
        Reading.all.select do |reading|
            reading == self.books
        end.uniq
    end

    def profile
        puts "Hi, my name is #{self.name} and I have written #{books.count} books"
    end

    def self.most_prolific
        self.all.max_by do |author|
            author.books.count
        end
    end

end