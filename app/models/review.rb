class Review < ApplicationRecord
  belongs_to :user
  belongs_to :statue

  validates :content, presence: true
  validates :stars, presence: true
end
