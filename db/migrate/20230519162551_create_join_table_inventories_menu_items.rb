class CreateJoinTableInventoriesMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_join_table :inventories, :menu_items do |t|
      # t.index [:inventory_id, :menu_item_id]
      # t.index [:menu_item_id, :inventory_id]
    end
  end
end
