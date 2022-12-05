class Lesson < ApplicationRecord
  has_many :bookings, inverse_of: :lesson
  accepts_nested_attributes_for :bookings
  has_many :schedules, dependent: :destroy
  accepts_nested_attributes_for :schedules

  has_many :trainers, through: :bookings
  has_many :clients, through: :bookings
<<<<<<< HEAD
  has_many :likes, dependent: :destroy
=======
  has_many :likes
>>>>>>> 32dad0a2b6d0c1426494527abb6c0b8182c9ffdc

  validates :title, :duration, :category, :language, :level, :description, presence: true
  validates :description, length: { maximum: 50 }
  monetize :price_cents

    def liked?(client)
      !!self.likes.find{|like| like.client_id == client.id}
    end

  
end
