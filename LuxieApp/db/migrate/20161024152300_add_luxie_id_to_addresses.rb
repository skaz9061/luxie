class AddLuxieIdToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :luxie_id, :integer
  end
end
