class Blog < ApplicationRecord
  has_many :favorites

  attachment :image

  validates :title, :body, presence: true

  def favorited_by?(customer)
    favorites.where(customer_id: customer.id).exists?
  end
end
