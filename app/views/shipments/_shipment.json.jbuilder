json.extract! shipment, :id, :ship_to_name, :ship_to_address, :notes, :order_date, :status, :created_at, :updated_at
json.url shipment_url(shipment, format: :json)
