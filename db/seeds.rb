Book.delete_all
User.delete_all
Reading.delete_all
Author.delete_all
BookAuthor.delete_all


b1 = Book.create(title: "Lost")
b2 = Book.create(title: "Return")
b3 = Book.create(title: "Moby")
b4 = Book.create(title: "Run")

u1 = User.create(name: "John")
u2 = User.create(name: "Mary")
u3 = User.create(name: "Jim")

r1 = Reading.create(user: u1, book: b1)
r2 = Reading.create(user: u2, book: b2)
r3 = Reading.create(user: u3, book: b3)
r4 = Reading.create(user: u3, book: b2)
r5 = Reading.create(user: u3, book: b1)

a1 = Author.create(name: "JK")
a2 = Author.create(name: "RL")
a3 = Author.create(name: "SK")

ba1 = BookAuthor.create(book: b1, author: a1)
ba2 = BookAuthor.create(book: b2, author: a2)
ba3 = BookAuthor.create(book: b3, author: a3)
ba4 = BookAuthor.create(book: b4, author: a3)
