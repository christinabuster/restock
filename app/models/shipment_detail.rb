class ShipmentDetail < ApplicationRecord
  belongs_to :shipment_details
  belongs_to :item
end
