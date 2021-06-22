class Blog < ApplicationRecord
  has_many :favorites, dependent: :destroy

  attachment :image

  validates :title, :body, presence: true
end
