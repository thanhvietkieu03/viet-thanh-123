# app/models/table.rb
class Table < ApplicationRecord
  has_one :reservation
  has_many :orders
end
class Table < ApplicationRecord
  validates :status, presence: true
end



