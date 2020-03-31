class Event < ApplicationRecord
 has_many :cmts
 belongs_to :user, :optional => true
 validates :name, presence: true, length: { in: 6..25 }
 validates :number, presence: true
 validates :start_date, presence: true
 validates :end_date, presence: true

end
