class Client < ApplicationRecord
  # belongs_to :user, inverse_of:  :clients, optional: true
  # accepts_nested_attributes_for :user
  belongs_to :user, dependent: :destroy, optional: true
  accepts_nested_attributes_for :user
  has_many :bookings, dependent: :destroy, inverse_of: :client
  accepts_nested_attributes_for :bookings
  has_many :lessons, through: :bookings
  has_many :likes
  
  validates :first_name, :last_name, presence: true
  validates :bio, length: { maximum: 50 }

  def name
    "#{first_name} #{last_name}"
  end

  def email
    User.find_by_id(self.user_id)
  end
end
