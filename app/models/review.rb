class Review < ApplicationRecord
  belongs_to :user
  belongs_to :event_space

  validates :rating, presence: true
  validates :rating, comparison: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
