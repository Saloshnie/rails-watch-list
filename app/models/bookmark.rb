class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie, presence: true
  validates :list, presence: true
  validates :movie, uniqueness: { scope: :list, message: "has already been added to this list" }

  belongs_to :movie
  belongs_to :list
end
