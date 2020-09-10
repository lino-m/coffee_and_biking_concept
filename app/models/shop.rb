class Shop < ApplicationRecord
  has_many :rides, dependent: :destroy

  validates :address, presence: true
  validates :description, presence: true
  validates :shop_manager, presence: true
end
