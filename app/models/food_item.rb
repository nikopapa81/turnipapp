class FoodItem < ActiveRecord::Base

validates :item_name, :presence => true, :uniqueness => true
validates :uofm_id, :presence => true
validates :category_id, :presence => true
validates :avg_exp_days, :presence => true
validates :expiration_date, :presence => true

end
