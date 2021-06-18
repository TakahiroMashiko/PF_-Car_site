class Car < ApplicationRecord
  belongs_to :genre
  has_many :car_options, dependent: :destroy
  has_many :estimates, dependent: :destroy
  attachment :image
end
