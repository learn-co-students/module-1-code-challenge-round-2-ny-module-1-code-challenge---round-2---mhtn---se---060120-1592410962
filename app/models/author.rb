class Author < ActiveRecord::Base
  has_many :authorbooks
  has_many :books, through: :authorbooks
end
