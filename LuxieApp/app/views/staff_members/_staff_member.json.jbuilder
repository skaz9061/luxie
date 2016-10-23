json.extract! staff_member, :id, :name, :title, :bio, :display_order, :created_at, :updated_at
json.url staff_member_url(staff_member, format: :json)