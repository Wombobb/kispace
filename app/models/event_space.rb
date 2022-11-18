class EventSpace < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  has_many_attached :photos

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :location, :name, :price, presence: true
end
