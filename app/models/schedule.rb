class Schedule < ApplicationRecord
    belongs_to :trainer, inverse_of: :schedules, optional: true
    belongs_to :lesson, inverse_of: :schedules, optional: true
    accepts_nested_attributes_for :trainer
    has_many :bookings, inverse_of: :schedule
    accepts_nested_attributes_for :bookings


    validates :start, uniqueness: { scope: :trainer_id, message: "You have already made this time available" }
end
