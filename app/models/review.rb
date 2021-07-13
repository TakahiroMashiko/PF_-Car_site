class Review < ApplicationRecord
  belongs_to :customer

  validates :title, :evaluation, presence: true
  validates :body, presence: true, length: { maximum: 200 }
end
