class UOfM < ActiveRecord::Base

validates :unit_name, :presence => true, :uniqueness => true

  has_many :food_items
end
