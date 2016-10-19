class Message < ApplicationRecord
	
	validates :subject, presence: true
	validates :query, presence: true
	validates :msg, presence: true
end
