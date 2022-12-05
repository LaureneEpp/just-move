class Client < ApplicationRecord
  # belongs_to :user, inverse_of:  :clients, optional: true
  # accepts_nested_attributes_for :user
  belongs_to :user, dependent: :destroy, optional: true
  accepts_nested_attributes_for :user
  has_many :bookings, dependent: :destroy, inverse_of: :client
  accepts_nested_attributes_for :bookings
  has_many :lessons, through: :bookings
<<<<<<< HEAD
  has_many :likes, dependent: :destroy
  
=======
  has_many :likes

>>>>>>> 32dad0a2b6d0c1426494527abb6c0b8182c9ffdc
  validates :first_name, :last_name, presence: true
  validates :bio, length: { maximum: 50 }

  def name
    "#{first_name} #{last_name}"
  end

  def email
    User.find_by_id(self.user_id)
  end
end
