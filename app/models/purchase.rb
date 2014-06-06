class Purchase < ActiveRecord::Base

validates :item_id, :presence => true
validates :quantity, :presence => true, numericality: true
validates :cost, :presence => true, numericality: true
validates :source, :presence => true
validates :expiration_date, :presence => true

belongs_to :user
belongs_to :food_item

end
