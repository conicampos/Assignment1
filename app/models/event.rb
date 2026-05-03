class Event < ApplicationRecord
  belongs_to :organizer, class_name: "User", foreign_key: "user_id"
  belongs_to :category
  has_many :registrations
  has_many :attendees, through: :registrations, source: :user

  enum :status, { draft: 0, published: 1, cancelled: 2 }, default: :published

  validates :title, :date, :location, :capacity, presence: true
  validates :capacity, numericality: { only_integer: true, greater_than: 0 }
end