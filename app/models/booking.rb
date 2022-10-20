class Booking < ApplicationRecord
  belongs_to :trainer
  belongs_to :schedule
  belongs_to :lesson
trai
  belongs_to :lesson, inverse_of:  :bookings
  accepts_nested_attributes_for :lesson

  belongs_to :schedule, inverse_of:  :bookings
  accepts_nested_attributes_for :schedule

  belongs_to :trainer, inverse_of:  :bookings
  accepts_nested_attributes_for :trainer

  belongs_to :client, inverse_of:  :bookings
  accepts_nested_attributes_for :client

  has_many :lesson_payments, dependent: :destroy, inverse_of: :booking
  accepts_nested_attributes_for :lesson_payments

  validates :schedule, presence: true
  validates :status, :cost, :start, presence: true
end
