require_relative '../config/environment.rb'


b1 = Book.new("Lost")
b2 = Book.new("Return")
b3 = Book.new("Moby")

u1 = User.new("John")
u2 = User.new("Mary")
u3 = User.new("Jim")

r1 = Reading.new(u1,b1)
r2 = Reading.new(u2,b2)
r3 = Reading.new(u3,b3)
r4 = Reading.new(u3,b2)
r5 = Reading.new(u3,b1)




Pry.start
