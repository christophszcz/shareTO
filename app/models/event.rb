class Event < ApplicationRecord
  # belongs_to :location
	has_many :visits 
    has_many :users, through: :visits
end
