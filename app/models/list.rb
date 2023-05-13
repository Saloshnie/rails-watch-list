class List < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  before_destroy :destroy_saved_movies

  private

  def destroy_saved_movies
    self.movies.destroy_all
  end
end
