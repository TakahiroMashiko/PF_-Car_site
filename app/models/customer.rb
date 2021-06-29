class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :visits
  has_many :estimates
  has_many :contacts
  has_many :blogs
  has_many :favorites

  validates :last_name, :first_name, :last_name_kana, :first_name_kana, :phone_number, presence: true
  validates :phone_number, numericality: { only_integer: true }
  validates :last_name_kana, :first_name_kana,
    format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/ }
  # Email address regular expression
  validates :email, presence: true, length: { maximum: 300 },
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end
