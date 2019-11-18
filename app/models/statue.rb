class Statue < ApplicationRecord
  belongs_to :user

  has_many :reviews
  has_many :rentals
end
