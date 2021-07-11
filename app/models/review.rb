class Review < ApplicationRecord
  belongs_to :customer

  validates :title, :body, :evaluation, presence: true
end
