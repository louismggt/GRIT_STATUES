class User < ApplicationRecord
  has_many :reviews
  has_many :rentals
  has_many :statues

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
