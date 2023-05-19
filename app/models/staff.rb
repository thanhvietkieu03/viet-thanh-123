class Staff < ApplicationRecord
    has_many :tables
  end
  class Staff < ApplicationRecord
    validates :name, presence: true
    validates :role, presence: true
  end
  