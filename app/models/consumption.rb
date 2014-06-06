class Consumption < ActiveRecord::Base

validates :item_id, :presence => true
validates :quantity, :presence => true

belongs_to :user
belongs_to :food_item

end
