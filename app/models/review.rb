class Review < ApplicationRecord
  belongs_to :bottle
  validates :rating, :comment, presence: true
end
