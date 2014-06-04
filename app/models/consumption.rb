class Consumption < ActiveRecord::Base

validates :item_id, :presence => true
validates :quantity, :presence => true

end
