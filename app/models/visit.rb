class Visit < ApplicationRecord
  belongs_to :customer
  belongs_to :dealer

  enum visit_status: { 来店待ち: 0, 接客中: 1, 接客済み: 2, キャンセル: 3 }
end
