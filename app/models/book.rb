class Book < ActiveRecord::Base
  has_many :authorbooks
  has_many :authors, through: :authorbooks
end
