class ServiceCategory < ActiveRecord::Base
    belongs_to :luxie
	has_many :services, dependent: :destroy
end
