class Item < ApplicationRecord
  has_many :shipment_details
  has_many :shipments, through: :order_details
end
