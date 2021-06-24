class Dealer < ApplicationRecord
  has_many :visits

  attachment :image

  validates :address, :phone_number, presence: true
end
