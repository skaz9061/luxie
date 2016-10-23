class HoursSchedule < ActiveRecord::Base
	attr_accessor :days, :open, :close
	
	belongs_to :store_info
end
