class AddLuxieIdToHoursSchedules < ActiveRecord::Migration
  def change
    add_column :hours_schedules, :luxie_id, :integer
  end
end
