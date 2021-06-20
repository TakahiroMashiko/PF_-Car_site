class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :last_name, :first_name, :last_name_kana, :first_name_kana, :phone_number, presence: true
  validates :phone_number, numericality: { only_integer: true }
  validates :last_name_kana, :first_name_kana,
    format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/ }
end
