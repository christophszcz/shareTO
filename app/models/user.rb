class User < ApplicationRecord
	include SimpleDiscussion::ForumUser
	
	def name 
		return "#{first_name} #{last_name}"
	end
end
