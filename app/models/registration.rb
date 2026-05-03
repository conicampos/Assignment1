class Registration < ApplicationRecord
  belongs_to :user
  belongs_to :event

  enum :status, { pending: 0, confirmed: 1, waitlisted: 2 }, default: :confirmed

  validates :user_id, uniqueness: { scope: :event_id, message: "already registered for this event" }
end