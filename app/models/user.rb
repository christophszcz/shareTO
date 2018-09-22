class User < ApplicationRecord
	include SimpleDiscussion::ForumUser
	has_secure_password
	def name 
		return "#{first_name} #{last_name}"
	end
end
