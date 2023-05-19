# app/models/menu_item.rb
class MenuItem < ApplicationRecord
  has_many :order_items
end
class MenuItem < ApplicationRecord
    has_and_belongs_to_many :inventories
  end