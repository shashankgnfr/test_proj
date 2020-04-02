class Cmt < ApplicationRecord
  belongs_to :event
	
	validates :commenter, presence: true, length: { in: 6..25 }
	validates :body, presence: true



end








