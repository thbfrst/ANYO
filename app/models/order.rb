class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items


  def total_pay
    total = 0
    self.order_items.each do |item|
      total += item.quantity * item.candy.price
    end
    return total
  end
end
