class Shipment < ApplicationRecord
  has_many :shipment_details
  has_many :items, through: :order_details
end
