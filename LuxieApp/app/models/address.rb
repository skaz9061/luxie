class Address < ActiveRecord::Base
	belongs_to :store_info
	
	def formatted_us
		return self.street_address + ", " + self.city + ", " + self.state + " " + self.zip
	end
end
