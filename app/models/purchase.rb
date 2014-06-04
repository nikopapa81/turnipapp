class Purchase < ActiveRecord::Base

validates :item_id, :presence => true
validates :quantity, :presence => true
validates :cost, :presence => true
validates :source, :presence => true
validates :expiration_date, :presence => true


end
