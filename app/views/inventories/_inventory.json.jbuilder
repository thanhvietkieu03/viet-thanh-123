json.extract! inventory, :id, :ingredient_id, :name, :quantity, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
