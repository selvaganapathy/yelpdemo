json.extract! restaurant, :id, :name, :address, :phone, :weblink, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
