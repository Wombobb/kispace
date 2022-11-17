class EventSpace < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  has_many_attached :photos

  validates :location, :name, :price, presence: true
end
