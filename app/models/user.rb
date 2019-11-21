class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews, dependent: :destroy
  has_many :rentals, dependent: :destroy
  has_many :statues, dependent: :destroy

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  def my_statues_reviews
    user_statues = self.statues
    return user_statues.map { |statue| statue.reviews }.flatten
  end

  def avarage_rating
    av_rating = 0
    unless my_statues_reviews == []
      my_statues_reviews.each do |review|
        av_rating += review.stars
      end
      av_rating /= my_statues_reviews.length
      return av_rating
    else
      return 0
    end
  end
end
