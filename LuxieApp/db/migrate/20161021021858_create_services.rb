class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :price
      t.string :note
      t.string :label
      t.text :description

      t.timestamps null: false
    end
  end
end
