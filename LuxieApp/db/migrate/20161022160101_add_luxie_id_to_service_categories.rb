class AddLuxieIdToServiceCategories < ActiveRecord::Migration
  def change
		add_column :service_categories, :luxie_id, :integer
  end
end
