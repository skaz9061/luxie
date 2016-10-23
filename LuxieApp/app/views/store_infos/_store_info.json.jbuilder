json.extract! store_info, :id, :name, :phone_number, :email, :description, :created_at, :updated_at
json.url store_info_url(store_info, format: :json)