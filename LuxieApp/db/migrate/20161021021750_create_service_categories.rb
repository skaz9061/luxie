class CreateServiceCategories < ActiveRecord::Migration
  def change
    create_table :service_categories do |t|
      t.string :name
      t.string :note
      t.integer :display_order

      t.timestamps null: false
    end
  end
end
