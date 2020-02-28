class Candy < ApplicationRecord

include PgSearch::Model
pg_search_scope :search_by_name,
  against: [ :name ],
  using: {
    tsearch: { prefix: true }
  }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :order_items

  belongs_to :user
  has_many :order_items, dependent: :destroy
  validates :name, presence: true
  validates :composition, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :availability, presence: true
end
