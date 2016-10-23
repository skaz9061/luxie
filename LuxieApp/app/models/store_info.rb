class StoreInfo < ActiveRecord::Base
	attr_accessor :name, :phone_number, :description
	
	has_one :address, dependent: :destroy
	has_many :hours, class_name: 'HoursSchedule', dependent: :destroy

end
