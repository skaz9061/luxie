class CreateStaffMembers < ActiveRecord::Migration
  def change
    create_table :staff_members do |t|
      t.string :name
      t.string :title
      t.text :bio
      t.integer :display_order

      t.timestamps null: false
    end
  end
end
