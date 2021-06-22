class Blog < ApplicationRecord
  has_many :favorites, dependent: :destroy

  attachment :image

  validates :favorite_id, :title, :body, presence: true
end
