class Movie < ApplicationRecord
  validates :overview, presence: true, uniqueness: true
  validates :title, presence: true, uniqueness: true
  has_many :bookmarks
  has_many :movies, through: :bookmarks
end
