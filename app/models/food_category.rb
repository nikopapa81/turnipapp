class FoodCategory < ActiveRecord::Base

validates :category_name, :presence => true, :uniqueness => true

end
