class Bottle < ApplicationRecord
  belongs_to :wine_maker
  validates :name, :description, :year, presence: true
end
