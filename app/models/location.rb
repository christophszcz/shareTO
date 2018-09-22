class Location < ApplicationRecord
	has_many :events
	has_many :items
end
