class Lesson < ApplicationRecord
  # has_many :bookings, inverse_of: :lesson
  # accepts_nested_attributes_for :bookings
  has_many :schedules, dependent: :destroy
  accepts_nested_attributes_for :schedules
  
  has_many :bookings, dependent: :destroy
  has_many :trainers, through: :bookings
  has_many :clients, through: :bookings
  has_many :likes

  validates :title, :duration, :category, :language, :level, :description, presence: true
  validates :description, length: { maximum: 50 }
  monetize :price_cents
end
