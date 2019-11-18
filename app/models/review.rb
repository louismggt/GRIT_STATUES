class Review < ApplicationRecord
  belongs_to :user
  belongs_to :statues

  validates :content, presence: true
  validates :stars, presence: true
end
