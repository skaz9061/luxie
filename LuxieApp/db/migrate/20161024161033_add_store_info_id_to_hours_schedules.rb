class AddStoreInfoIdToHoursSchedules < ActiveRecord::Migration
  def change
    add_column :hours_schedules, :store_info_id, :integer
  end
end
