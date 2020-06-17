class Book < ActiveRecord::Base
    has_many :readings 
    has_many :users, through: :readings

    has_many :book_authors
    has_many :authors, through: :book_authors 

    def author_names
        authors.map do |author|
            author.name
        end.uniq
    end

    def reader_names
        readings.map do |reading|
            reading.user
        end
    end

end