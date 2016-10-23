class Luxie < ActiveRecord::Base
	attr_accessor :alert, :promo
	
	has_one :store_info, as: :info, dependent: :destroy
	has_many :staff, class_name: 'StaffMember', dependent: :destroy
	has_many :categories, class_name: 'ServiceCategory', dependent: :destroy
	
	
end
