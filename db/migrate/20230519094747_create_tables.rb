class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :tables do |t|
      t.integer :table_id
      t.string :status
      t.integer :capacity

      t.timestamps
    end
  end
end
