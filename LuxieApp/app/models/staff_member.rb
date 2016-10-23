class StaffMember < ActiveRecord::Base
	attr_accessor :name, :title, :bio, :display_order
	
	belongs_to :luxie
end
