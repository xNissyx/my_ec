json.extract! product, :id, :name, :caption, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
