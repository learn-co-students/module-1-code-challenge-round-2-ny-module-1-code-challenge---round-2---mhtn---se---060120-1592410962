require_relative '../config/environment.rb'

###B BOOKS ###
b1 = Book.new("Harry Potter")
b2 = Book.new("Junie B Jones")
b3 = Book.new("Cam Janses")
b4 = Book.new("Magic Tree House")

### USERS ###
u1 = User.new("Lily")
u2 = User.new("Jose")
u3 = User.new("Sue")

### READINGS ###
r1 = Reading.new(u1,b1)
r2 = Reading.new(u2,b2)
r3 = Reading.new(u3,b3)
r4 = Reading.new(u3,b4)
r5 = Reading.new(u3,b1)


binding.pry
#Pry.start