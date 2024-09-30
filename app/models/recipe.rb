class Recipe < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :image_url, presence: true, url: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }

  has_many :bookmarks
  has_many :categories, through: :bookmarks
end
