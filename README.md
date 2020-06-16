# Round 2 Code Challenge - Users/Books

## Topics

- Classes and Instances
- Class and Instance Methods
- Variable Scope
- Object Relationships
- Arrays and Array Methods
- Active Record
- Rake

## Instructions

To get started, run `bundle install` while inside of this directory.

Build out all of the methods listed in the deliverables. The methods are listed in a suggested order, but you can feel free to tackle the ones you think are easiest. Be careful: some of the later methods rely on earlier ones.

**Remember!** This code challenge does not have tests. You cannot run `rspec` and you cannot run `learn`. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console before submitting.

We've provided you with a `console.rb` file and a `seeds` file that you can use to test your code.

Writing error-free code is more important than completing all of the deliverables listed - prioritize writing methods that work over writing more methods that don't work. You should test your code as you write.

Similarly, messy code that works is better than clean code that doesn't. First, prioritize getting things working. Then, if there is time at the end, refactor your code to adhere to best practices. Examples of best practices might be to use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`, or, when you encounter duplicated logic, to extract it into a shared helper method.

## Deliverables

For this challenge, we'll be working with a User-Books Domain to track books that people have read.

We have three models: `User`, `Book`, and `Reading`.

A `User` has many `Readings`s. A `Book` has many `Readings`s. A `Reading` belongs to a `User` and belongs to a `Book`.

`User` - `Book` is a many to many relationship.

**Note**: You should draw your domain on paper or on a whiteboard _before you start coding_. Remember to identify a single source of truth for your data.

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class methods.

Some of the methods listed are provided to you in the starter code. You should check that they work correctly, and that you understand them.

### Part I: Using ONLY Object Oriented Ruby (no Active Record or databases)

#### Book

- `Book#initialize(title)`
  - `Book` is initialized with a title (string)
  - title **cannot be** changed after the `Book` is initialized
- `Book#title`
  - returns the `Book`'s title
- `Book.all`
  - returns an array of all the `Book` instances that have been initialized
- `Book#readings`
  - returns an array of all the `Reading` instances for the `Movie`.
- `Movie#reader_names`
  - returns an array of the names of all the `User`s that read the `Book`.


#### User

- `User#initialize(name)`
  - `User` is initialized with a name (string)
  - name **can be** changed after the User is initialized
- `User#name`
  - returns the User's name
- `User.all`
  - returns an array of all the Viewer instances that have been initialize
- `User#readings`
  - returns an array of `Reading` instances associated with the `User` instance.
- `User#books_read`
  - returns an array of `Book` instances that the `User` has read.
- `User#read_book(book)`
  - a `Book` instance is passed in as an argument
  - `User` should now have that `Book` instance in it's list of `Book`s

#### Reading

- `Reading.all`
  - returns an array of all initialized `Reading` instances
- `Reading#user`
  - returns the `User` instance associated with the `Reading` instance
- `Reading#book`
  - returns the `Book` instance associated with the `Reading` instance


## Checkpoint: Make a commit with message "part 1 complete"


### Part II: Convert this application to an Active Record application and add functionality

_Hint: Don't forget to have your classes inherit from ActiveRecord::Base_

#### Update Application

- Create all of the necessary tables

- Make all of the necessary changes to your models
    - update your models so that they will work with Active Record
    - change and/or remove all class and instance methods that you you have written inside of your models

#### Add Functionality

- `Books` have many `Authors`
- `Authors` have many `Books`
- `Books` - `Authors` is a many to many relationship

##### Book

- `Book#authors`
  - returns an array of all the `Author`s of the `Book`.
- `Book#author_names`
  - returns an array of the names of all the `Authors`s who wrote the `Book`.


##### Author

- `Author#books`
  - returns an array of all the `Book`s an `Author` has written.
- `Author#book_titles`
  - returns an array of the titles of all the `Book`s that an `Author` has written.


## Checkpoint: Make a final commit with message "part 2 complete"
