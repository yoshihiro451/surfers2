class Contact < ApplicationRecord
	belongs_to :user
	# validates :title, length: { in: 1..200 }
   	validates :coment, length: { in: 1..500 }
end
