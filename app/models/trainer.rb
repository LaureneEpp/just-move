class Trainer < ApplicationRecord
    # belongs_to :user, inverse_of: :trainers, optional: true
    # accepts_nested_attributes_for :user
    belongs_to :user, dependent: :destroy, optional: true
    accepts_nested_attributes_for :user
    has_many :bookings, dependent: :destroy, inverse_of: :trainer
    accepts_nested_attributes_for :bookings
    has_many :lessons, through: :bookings
    has_many :schedules, dependent: :destroy, inverse_of: :trainer
    accepts_nested_attributes_for :schedules

    validates :first_name, :last_name, presence: true
    validates :bio, :experience, length: { maximum: 50 }

    def name
      "#{first_name} #{last_name}"
    end

    def email
      User.find_by_id(self.user_id)
    end
end
