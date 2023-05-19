# app/models/table.rb
class Table < ApplicationRecord
  has_one :reservation
  has_many :orders
end



