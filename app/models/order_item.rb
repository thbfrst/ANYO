class OrderItem < ApplicationRecord
  belongs_to :candy
  belongs_to :order
end
