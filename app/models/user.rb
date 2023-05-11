class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :lives
  has_many :bookings
  has_many :reviews
  has_one_attached :photo
  # validates :name, presence: true
  # user can give meny reviews
end
