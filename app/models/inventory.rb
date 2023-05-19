# app/models/inventory.rb
class Inventory < ApplicationRecord
  has_and_belongs_to_many :menu_items
end

# app/models/menu_item.rb
class MenuItem < ApplicationRecord
  has_and_belongs_to_many :inventories
end
