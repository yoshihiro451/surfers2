class Chat < ApplicationRecord
	belongs_to :user
	belongs_to :topic
	validates :comment, length: { in: 1..500 }
end
