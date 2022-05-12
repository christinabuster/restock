json.extract! item, :id, :item_name, :description, :current_quantity, :msrp, :wsp, :sku, :created_at, :updated_at
json.url item_url(item, format: :json)
