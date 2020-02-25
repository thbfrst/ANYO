class Candy < ApplicationRecord
  has_many :oder_items
  validates :name, presence: true
  validates :composition, presence: true
  validates :price, presence: true
end
