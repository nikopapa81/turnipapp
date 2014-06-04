class UOfM < ActiveRecord::Base

validates :unit_name, :presence => true, :uniqueness => true

end
