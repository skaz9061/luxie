json.extract! service, :id, :name, :price, :note, :label, :description, :created_at, :updated_at
json.url service_url(service, format: :json)