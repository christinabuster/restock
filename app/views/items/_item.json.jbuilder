json.extract! item, :id, :item_name, :description, :quantity, :msrp, :wsp, :sku, :created_at, :updated_at
json.url item_url(item, format: :json)
