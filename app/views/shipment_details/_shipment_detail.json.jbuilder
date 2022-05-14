json.extract! shipment_detail, :id, :shipment_id, :item_id, :quantity, :requested_quantity, :created_at, :updated_at
json.url shipment_detail_url(shipment_detail, format: :json)
