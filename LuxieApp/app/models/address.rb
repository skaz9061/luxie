class Address < ActiveRecord::Base
	attr_accessor :street_address, :city, :state, :zip
	belongs_to :store_info
end
