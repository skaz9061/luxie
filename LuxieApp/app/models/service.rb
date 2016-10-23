class Service < ActiveRecord::Base
	attr_accessor :name, :price, :note, :label
	
	belongs_to :category, class_name: 'ServiceCategory'
end
