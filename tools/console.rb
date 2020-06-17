require_relative '../config/environment.rb'


# You may use this file to test your OO Ruby code
user1 = User.new("jerry")

b1 = Book.new("some book")

r1 = Reading.new(user1, b1)

Pry.start
