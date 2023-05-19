class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.integer :staff_id
      t.string :name
      t.string :role

      t.timestamps
    end
  end
end
