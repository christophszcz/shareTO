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
	
	def name 
		return "#{first_name} #{last_name}"
	end
end
