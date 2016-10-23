class ServiceCategory < ActiveRecord::Base
	attr_accessor :name, :note, :display_order
	
	belongs_to :luxie
	has_many :services, dependent: :destroy
end
