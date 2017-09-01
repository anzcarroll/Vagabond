class City < ApplicationRecord
  #A city will have many posts
  has_many :posts
  has_many :users, through: :posts
end
