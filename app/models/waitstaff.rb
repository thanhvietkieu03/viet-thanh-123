class Waitstaff < ApplicationRecord
    has_many :tables
  end
  class Waitstaff < ApplicationRecord
    validates :name, presence: true
  end
  