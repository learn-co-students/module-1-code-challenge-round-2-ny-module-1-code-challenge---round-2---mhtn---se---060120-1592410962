class Book < ActiveRecord::Base
   has_many :relations
   has_many :authors, through: :relations
   has_many :readings
   has_many :users, through: :readings  
   
   def author_names 
      self.authors.map {|author| author.name}
   end 
end







############### BACKUP FOR PART 1 #####################
 # attr_reader :title 

    # @@all = []

    # def initialize(title)
    #     @title = title
    #     @@all << self 
    # end

    # def self.all
    #     @@all 
    # end 

    # def readings 
    #     Reading.all.select {|reading| reading.book == self}
    # end 

    # def reader_names  
    #     readings.map {|reading| reading.user.name}
    # end 