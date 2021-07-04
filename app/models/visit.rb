class Visit < ApplicationRecord
  belongs_to :customer
  belongs_to :dealer

  enum visit_status: { 来店待ち: 0, 接客中: 1, 接客済み: 2, キャンセル: 3 }

  validates :name, :name_kana, presence: true
  validates :phone_number, presence: true, numericality: { only_integer: true }
  # Email address regular expression
  validates :email, presence: true, length: { maximum: 300 },
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :visit, presence: true
end
