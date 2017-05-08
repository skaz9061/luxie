class HoursSchedule < ActiveRecord::Base
	belongs_to :store_info
	
	def formatted_hours
		if (self.open == "" || self.close == "") 
			return "CLOSED"
		elsif (self.open && self.close)
			return "#{self.open} - #{self.close}"	
		else
			return "CLOSED"
		end
	end
end
