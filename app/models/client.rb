class Client < ApplicationRecord
  belongs_to :user, inverse_of:  :clients
  accepts_nested_attributes_for :user
  has_many :bookings, dependent: :destroy, inverse_of:  :client
  accepts_nested_attributes_for :bookings
  has_many :lessons, through: :bookings
  # has_many :lesson_payments, through: :bookings

  validates :first_name, :last_name, :bio, presence: true
  validates :bio, :experience, length: { maximum: 50 }

  def name
    "#{first_name} #{last_name}"
  end

  def email
    User.find_by_id(self.user_id)
  end
end
