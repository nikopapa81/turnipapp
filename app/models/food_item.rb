class FoodItem < ActiveRecord::Base

validates :item_name, :presence => true, :uniqueness => true
validates :uofm_id, :presence => true
validates :category_id, :presence => true
validates :avg_exp_days, :presence => true

has_many :users
has_many :purchases
has_many :consumptions
belongs_to :food_category
belongs_to :u_of_m

end
