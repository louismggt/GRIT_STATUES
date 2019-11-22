class Statue < ApplicationRecord
  belongs_to :user

  has_many :reviews, dependent: :destroy
  has_many :rentals, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :description, presence: true

  validates :material, presence: true
  validates :length, presence: true
  validates :width, presence: true
  validates :height, presence: true
  validates :location, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?


  def statue_reviews
    @statue_reviews_all = self.reviews
  end

  def statue_average
    av_rating = 0
    unless statue_reviews == []
      statue_reviews.each do |review|
        av_rating += review.stars
      end
      av_rating /= statue_reviews.length
      return av_rating
    else
      return 0
    end
  end
end
