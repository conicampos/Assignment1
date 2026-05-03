class User < ApplicationRecord
  has_many :organized_events, class_name: "Event", foreign_key: "user_id"
  has_many :registrations
  has_many :events, through: :registrations

  validates :name, :email, presence: true
  validates :email, uniqueness: true
end
