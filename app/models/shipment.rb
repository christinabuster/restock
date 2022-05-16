class Shipment < ApplicationRecord
  has_many :shipment_details
  has_many :items, through: :shipment_details
end
