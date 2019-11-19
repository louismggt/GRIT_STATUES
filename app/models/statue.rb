class Statue < ApplicationRecord
  belongs_to :user

  has_many :reviews, dependent: :destroy
  has_many :rentals, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :surface, presence: true
  validates :description, presence: true

  validates :material, presence: true
  validates :length, presence: true
  validates :width, presence: true
  validates :height, presence: true
  validates :location, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
