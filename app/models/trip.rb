class Trip < ActiveRecord::Base
  belongs_to :user 
  acts_as_mappable
end
