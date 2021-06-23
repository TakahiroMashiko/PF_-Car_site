class Blog < ApplicationRecord
  has_many :favorites

  attachment :image

  validates :title, :body, presence: true
end
