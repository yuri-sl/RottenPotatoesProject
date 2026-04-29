class Movie < ApplicationRecord
  RATINGS = %w[G PG PG-13 R NC-17].freeze

  validates :title, presence: true
  validates :rating, inclusion: { in: RATINGS, message: 'must be G, PG, PG-13, R, or NC-17' }, allow_blank: true
end
