class Author < ActiveRecord::Base
    has_many :relations
    has_many :books, through: :relations

    def book_titles
        self.books.map {|book| book.title}
    end 

    def customers 
    
    end 

    def profile
        "Hi, my name is #{self.name} and I have written #{self.books.count} books"
    end 

    def self.most_prolific_helper #returned the author id with the most books and how many books the author has writtened... 
        Relation.all.each_with_object(Hash.new(0)) { |order, hash| hash[order['author_id']] += 1 }.max_by { |k, v| v }
    end 

    def self.most_prolific 
        Author.all[Author.most_prolific_helper[0]-1]
    end 

end 
