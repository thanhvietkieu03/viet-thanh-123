class CreateWaitstaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :waitstaffs do |t|
      t.integer :waiter_id
      t.string :name

      t.timestamps
    end
  end
end
