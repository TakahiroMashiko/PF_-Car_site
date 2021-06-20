class Blog < ApplicationRecord
  has_many :favorites, dependent: :destroy

  
end
