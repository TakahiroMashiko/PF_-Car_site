class Dealer < ApplicationRecord
  has_many :visits

  attachment :image
end
