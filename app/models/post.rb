class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, maximum: 200 }
  validates :description, presence: :true
  belongs_to :user
  belongs_to :city
end