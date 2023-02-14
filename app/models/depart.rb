class Depart < ApplicationRecord
	belongs_to :route
	has_many :deliveries
end
