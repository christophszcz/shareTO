class UsersController < ApplicationController
	def new 
		@user = User.new
	end

	def create
		email = params[:user][:email]
		password = params[:user][:password]
		password_confirmation = params[:user][:password_confirmation]
		user = User.create(email: email, password: password, password_confirmation: password_confirmation, moderator: false)
		if user 
			session[:user_id] = user.id
			# here when a user signs up they should be given a page with a bunch of information instead of just being routed to the root path
			redirect_to root_path
		else 
			render 'errors/cannot_create_user'
		end
	end
end
