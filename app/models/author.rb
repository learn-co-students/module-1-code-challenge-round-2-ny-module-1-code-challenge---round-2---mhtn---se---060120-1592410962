class Author <  ActiveRecord::Base
    has_many :users
    has_many :books, through: :users

    # puts a string that says the Author's name and total number of Books the Author has written
    # For example: "Hi, my name is Maggie and I have written 10 books'
    def profile
        puts "Hi, my name is #{self.name} and I have written #{} books"
    end

    #Returns the Author instance that has written the most books
    def self.most_prolific
        Author.all.select{|most_book| most_book.book.}
    end
    
    
end