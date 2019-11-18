class Statue < ApplicationRecord
  belongs_to :user

  has_many :reviews
  has_many :rentals

  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :surface, presence: true
  validates :description, presence: true
end
