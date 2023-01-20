class Booking < ApplicationRecord

  # belongs_to :lesson, inverse_of:  :bookings, optional: true
  # accepts_nested_attributes_for :lesson

  # belongs_to :schedule, inverse_of:  :bookings, optional: true
  # accepts_nested_attributes_for :schedule

  # belongs_to :trainer, inverse_of: :bookings, optional: true
  # accepts_nested_attributes_for :trainer

  # belongs_to :client, inverse_of:  :bookings, optional: true
  # accepts_nested_attributes_for :client

  belongs_to :lesson
  # accepts_nested_attributes_for :lesson

  belongs_to :schedule
  # accepts_nested_attributes_for :schedule

  belongs_to :trainer
  # accepts_nested_attributes_for :trainer

  belongs_to :client
  # accepts_nested_attributes_for :client

  # enum :status [:pending, :completed, :rejected, :no_show, :no_show_refunded, :canceled, :canceled_refunded]
  enum status: { pending: 0, completed: 1, rejected: 2, no_show: 3 }

  validates :schedule, presence: true
  validates :client_id, uniqueness: { scope: :lesson_id }
  # validates :status, :price, :start, presence: true
end