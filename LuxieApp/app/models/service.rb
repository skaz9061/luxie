class Service < ActiveRecord::Base
	belongs_to :category, class_name: 'ServiceCategory'
end
