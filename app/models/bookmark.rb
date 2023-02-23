class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }
  validates :movie_id, presence: true
  validates :movie_id, uniqueness: {
    scope: :list_id,
    message: 'should be a unique movie/list pair'
  }
end
