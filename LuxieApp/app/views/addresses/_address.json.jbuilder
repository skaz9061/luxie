json.extract! address, :id, :street_address, :city, :state, :zip, :created_at, :updated_at
json.url address_url(address, format: :json)