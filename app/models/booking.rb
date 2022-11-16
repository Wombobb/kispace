class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event_space
  has_many_attached :photos
  STATUS = ["pending", "rejected", "approved"]
  enum status: { pending: "pending", rejected: "rejected", approved: "approved" }, _default: :pending
end
