class StoreInfo < ActiveRecord::Base
	has_one :address, dependent: :destroy
	has_many :hours, class_name: 'HoursSchedule', dependent: :destroy
end
