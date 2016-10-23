class CreateHoursSchedules < ActiveRecord::Migration
  def change
    create_table :hours_schedules do |t|
      t.string :days
      t.string :open
      t.string :close

      t.timestamps null: false
    end
  end
end
