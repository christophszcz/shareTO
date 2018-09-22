class User < ApplicationRecord
	include SimpleDiscussion::ForumUser
	# this is how we bind the user's location to the other locations in the app, geokit uses the following code
	acts_as_mappable :default_units => :kms,
               		 :default_formula => :sphere,
                   :distance_field_name => :distance,
                   :lat_column_name => :latitude,
                   :lng_column_name => :longitude
 	# for bcrypt
	has_secure_password
	validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true, uniqueness: true
	attr_accessor :location
	
	def name 
		return "#{first_name} #{last_name}"
	end
end
