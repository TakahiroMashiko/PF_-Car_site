class Estimate < ApplicationRecord
  belongs_to :customer
  belongs_to :car
  belongs_to :car_option
end
