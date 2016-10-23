class CreateStoreInfos < ActiveRecord::Migration
  def change
    create_table :store_infos do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.text :description

      t.timestamps null: false
    end
  end
end
