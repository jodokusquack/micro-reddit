class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, :email, :password, presence: { message: "%{attribute} must have a value" }
  validates :username, :email, uniqueness: { message: "The Email is already taken" }
  validates :username, length: { maximum: 30 }
  validates :password, length: { in: 8..30 }
  validates :password, confirmation: true
end
