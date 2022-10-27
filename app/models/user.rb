class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :trainer, dependent: :destroy
  has_one :client, dependent: :destroy
  # has_many :trainers, dependent: :destroy, inverse_of: :user
  # has_many :clients, dependent: :destroy, inverse_of: :user

  validates :email, presence: true, format: { with: /\A([^\}\{\]\[@\s\,]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
