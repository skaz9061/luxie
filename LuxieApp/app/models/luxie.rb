class Luxie < ActiveRecord::Base
	
	has_one :info, class_name: 'StoreInfo', dependent: :destroy
	has_many :staff, class_name: 'StaffMember', dependent: :destroy
	has_many :categories, class_name: 'ServiceCategory', dependent: :destroy
	
	
end
