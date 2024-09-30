class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :bookmarks
  has_many :recipes, through: :bookmarks
end
