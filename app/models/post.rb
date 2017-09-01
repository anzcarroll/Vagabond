class Post < ApplicationRecord
  #posts belong to cities and users, and serves as the "middleman" between the two in order to connerct them
  validates :title, presence: true, length: { minimum: 3, maximum: 200 }
  validates :description, presence: :true
  belongs_to :user
  belongs_to :city
end
