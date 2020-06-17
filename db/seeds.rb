# You may use this file to test your Active Record code

b1 = Book.create(title: "Happy Tree")
b2 = Book.create(title: "Sky Fall")
b3 = Book.create(title: "Ruby")

a1 = Author.create(name: "Paul James")
a2 = Author.create(name: "Luke Roberts")
a3 = Author.create(name: "Jane Austin")

u1 = User.create(name: "Bella", book_id: 1, author_id: 3)
u2 = User.create(name: "Sam", book_id: 3, author_id: 1)
u3 = User.create(name: "Ralston", book_id: 2, author_id: 3)