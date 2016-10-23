class CreateLuxies < ActiveRecord::Migration
  def change
    create_table :luxies do |t|
      t.string :alert
      t.string :promo

      t.timestamps null: false
    end
  end
end
