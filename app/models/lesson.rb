class Lesson < ApplicationRecord
  has_many :bookings, inverse_of: :lesson
  accepts_nested_attributes_for :bookings

  has_many :schedules, inverse_of: :lesson
  accepts_nested_attributes_for :schedules
  has_many :trainers, through: :bookings
  has_many :clients, through: :bookings

  validates :title, :duration, :cost, :category, :language, :level, :description, presence: true
  validates :description, length: { maximum: 50 }
end
