class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Trainers
  has_many :trainers, dependent: :destroy, inverse_of: :user
  accepts_nested_attributes_for :trainers

  # Clients
  has_many :clients, dependent: :destroy, inverse_of: :user
  accepts_nested_attributes_for :clients
end
