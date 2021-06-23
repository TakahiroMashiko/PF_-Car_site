class Contact < ApplicationRecord
  belongs_to :customer

  validates :name, :phone_number, :email, :subject, :message, presence: true
end
