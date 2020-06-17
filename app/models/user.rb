class User < ActiveRecord::Base


    def books_read
      readings.map do |user|
        user.book
      end
    end

    # def read_book(book)
    #
    # end

    # def self.scholars

    # end
    # Will Come Back to These Deliverables in part 2
    # def readings
    #   Reading.all.select do |user|
    #     user.reading == self
    #   end
    # end
end
