class Author < ActiveRecord::Base
    has_many :relations
    has_many :books, through: :relations
end 
