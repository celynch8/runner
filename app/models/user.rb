class User < ActiveRecord::Base
	has_many :Run_cards
	validates :name, presence: true
end
