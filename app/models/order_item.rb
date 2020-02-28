class OrderItem < ApplicationRecord
  belongs_to :candy
  belongs_to :order

  validates :quantity, presence: true
  validates :minutes, presence: true
end
