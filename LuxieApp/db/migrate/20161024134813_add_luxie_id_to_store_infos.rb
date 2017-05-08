class AddLuxieIdToStoreInfos < ActiveRecord::Migration
  def change
		add_column :store_infos, :luxie_id, :integer
  end
end
