class AddStoreInfoIdToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :store_info_id, :integer
  end
end
