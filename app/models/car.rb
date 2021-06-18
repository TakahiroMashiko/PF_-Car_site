class Car < ApplicationRecord
  belongs_to :genre
  attachment :image
end
