class Car < ApplicationRecord
  belongs_to :genre
  has_many :car_options, dependent: :destroy
  attachment :image
end
