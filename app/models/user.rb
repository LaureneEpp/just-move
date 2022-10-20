class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :trainers, dependent: :destroy, inverse_of: :user
  accepts_nested_attributes_for :trainers
  has_many :clients, dependent: :destroy, inverse_of: :user
  accepts_nested_attributes_for :clients

  validates :email, presence: true, format: { with: /\A([^\}\{\]\[@\s\,]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
