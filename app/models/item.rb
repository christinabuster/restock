class Item < ApplicationRecord
  has_many :shipments
  #has_many :shipments, through: :inventories

  validates :item_name, presence: true
  validates :sku, presence: true, uniqueness: true, length: { maximum: 15 }
  validates :quantity ,presence: true ,numericality: { only_integer: true ,greater_than_or_equal_to: 1}
end
