# app/models/order.rb
class Order < ApplicationRecord
    belongs_to :table
    has_many :order_items
  end
  class Order < ApplicationRecord
    validates :table_id, presence: true
    validates :status, presence: true
  end
  