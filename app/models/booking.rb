class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event_space
  has_many_attached :photos
  STATUS = ["pending", "rejected", "accepted"]
  enum status: { pending: "pending", rejected: "rejected", accepted: "accepted" }, _default: :pending

  def pending?
    status == 'pending'
  end
end
