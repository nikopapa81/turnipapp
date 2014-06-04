class Activity < ActiveRecord::Base

validates :activity_name, :presence => true, :uniqueness => true

end
