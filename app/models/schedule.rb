class Schedule < ApplicationRecord
    belongs_to :trainer, inverse_of: :schedules, optional: true
    belongs_to :lesson

    has_many :bookings, inverse_of: :schedule
    accepts_nested_attributes_for :bookings

    validates :start_time, uniqueness: { scope: :trainer_id, message: "You have already made this time available" }

    default_scope -> { order(:start_time) }

    def time
      "#{start_time.strftime('%I:%M %p')} - #{end_time.strftime('%I:%M %p')}"
    end
end
