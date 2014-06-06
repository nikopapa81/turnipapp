class FoodCategory < ActiveRecord::Base

validates :category_name, :presence => true, :uniqueness => true

has_many :food_items

end
