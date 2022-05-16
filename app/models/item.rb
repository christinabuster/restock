class Item < ApplicationRecord
  has_many :shipment_details
  has_many :shipments, through: :shipment_details
end
