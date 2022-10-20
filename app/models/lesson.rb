class Lesson < ApplicationRecord
  has_many :trainers, through: :bookings
  has_many :clients, through: :bookings
  has_many :bookings, inverse_of: :lessons
  accepts_nested_attributes_for :bookings

  validates :title, :duration, :cost, :category, :language, :level, :description, presence: true
  validates :description, length: { maximum: 50 }
end
