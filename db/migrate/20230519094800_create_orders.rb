class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.string :status
      t.datetime :timestamp
      t.integer :table_id

      t.timestamps
    end
  end
end
