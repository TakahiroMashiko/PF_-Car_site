class Blog < ApplicationRecord
  has_many :favorites, dependent: :destroy

  validates :favorite_id, :title, :body, presence: true
end
