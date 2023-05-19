class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.integer :item_id
      t.string :name
      t.decimal :price
      t.string :allergy_info

      t.timestamps
    end
  end
end
