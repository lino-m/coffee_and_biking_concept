class Ride < ApplicationRecord
  has_many :comments, dependent: :destroy
end
