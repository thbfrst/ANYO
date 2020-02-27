class Candy < ApplicationRecord

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :order_items

  belongs_to :user
  has_many :order_items
  validates :name, presence: true
  validates :composition, presence: true
  validates :price, presence: true

end
