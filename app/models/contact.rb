class Contact < ApplicationRecord
  belongs_to :customer

  validates :name, presence: true
  validates :phone_number, presence: true, numericality: { only_integer: true }
  # Email address regular expression
  validates :email, presence: true, length: { maximum: 300 },
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :subject, :message, presence: true
end
