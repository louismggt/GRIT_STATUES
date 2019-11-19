class Statue < ApplicationRecord
  belongs_to :user

  has_many :reviews, dependent: :destroy
  has_many :rentals, dependent: :destroy

  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :surface, presence: true
  validates :description, presence: true
  validates :material, presence: true
  validates :length, presence: true
  validates :width, presence: true
  validates :height, presence: true
end
