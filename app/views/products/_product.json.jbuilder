json.extract! product, :id, :name, :price, :description, :color, :quantity, :size, :gender, :created_at, :updated_at
json.url product_url(product, format: :json)
