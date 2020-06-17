class User < ActiveRecord::Base
    has_many :readings
    has_many :books, through: :readings

    def author_helper 
       self.readings.map {|reading| reading.book_id}
    end 

    def author
        author_array = []
        author_helper.each do |number|
        author_array << Author.all[number-1]
        end 
        author_array 
    end 
end








############### BACKUP FOR PART 1 #####################
# attr_accessor :name 
    
    # @@all = []

    # def initialize(name)
    #     @name = name 
    #     @@all << self  
    # end

    # def self.all
    #     @@all 
    # end 

    # def readings
    #     Reading.all.select {|reading| reading.user == self}
    # end 

    # def books_read
    #     readings.map {|reading| reading.book}
    # end 

    # def read_book(book)
    #     Reading.new(self,book)
    # end 

    # def self.scholar
    #    user_array = [] 
    #    User.all.select do |user|
    #     if user.readings.count > 2
    #         user_array << user 
    #     end 
    #    end 
    #    user_array  
    # end 