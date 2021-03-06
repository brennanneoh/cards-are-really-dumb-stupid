class Player < ApplicationRecord
  include PlayerAdmin

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :scores
  has_many :games, through: :scores
  has_many :hands

  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, confirmation: true
end
