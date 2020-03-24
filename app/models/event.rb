class Event < ApplicationRecord
 has_many :cmts
 belongs_to :user, :optional => true	
end
