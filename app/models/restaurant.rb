class Restaurant < ApplicationRecord
  RESTAURANTS_CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: RESTAURANTS_CATEGORY }
end
