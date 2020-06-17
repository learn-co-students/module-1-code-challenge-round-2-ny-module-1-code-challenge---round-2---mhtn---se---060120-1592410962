# You may use this file to test your Active Record code

### AUTHOR ###
a1 = Author.create(name: "JK Rowling")
a2 = Author.create(name: "Martha Stewart")
a3 = Author.create(name: "Michelle Obama")

### BOOK ###
b1 = Book.create(title:"Harry Potter One")
b2 = Book.create(title:"Harry Potter Two")
b3 = Book.create(title:"Harry Potter Three")
b4 = Book.create(title:"Cooking For Dummies")
b5 = Book.create(title:"Becoming")

## RELATION ###
rel1 = Relation.create(author_id: 1, book_id: 1)
rel2 = Relation.create(author_id: 1, book_id: 2)
rel3 = Relation.create(author_id: 1, book_id: 3)
rel4 = Relation.create(author_id: 2, book_id: 4)
rel5 = Relation.create(author_id: 3, book_id: 5)

### USER ###
u1 = User.create(name:"Maleeha")
u2 = User.create(name:"Jose")
u3 = User.create(name:"Tasmime")
u4 = User.create(name:"Shanjana")


## READING ###
red1 = Reading.create(book_id: 1, user_id: 1)
red2 = Reading.create(book_id: 2, user_id: 2)
red3 = Reading.create(book_id: 3, user_id: 3)
red4 = Reading.create(book_id: 4, user_id: 4)
red5 = Reading.create(book_id: 5, user_id: 1)
red6 = Reading.create(book_id: 5, user_id: 2)


