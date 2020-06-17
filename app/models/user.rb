class User

    attr_accessor :name #accessor so we can read the user name AND change it 
    
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self  
    end

    def self.all
        @@all 
    end 

    def readings
        Reading.all.select {|reading| reading.user == self}
    end 

    def books_read
        readings.map {|reading| reading.book}
    end 

    def read_book(book)
        Reading.new(self,book)
    end 

    def self.scholar
       user_array = [] 
       User.all.select do |user|
        if user.readings.count > 2
            user_array << user 
        end 
       end 
       user_array  
    end 

end