class CarOption < ApplicationRecord
  belongs_to :car
  belongs_to :estimate

  validates :car_id, :name, :price, presence: true
  validates :price, numericality: { only_integer: true }
end
