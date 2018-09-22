class SessionsController < ApplicationController
	def new

	end

	def create
		email = params[:session][:email]
		password = params[:session][:password]

		user = User.find_by(email: email)
		if user && user.authenticate(password)
			session[:user_id] = user.id
		else 
			render 'errors/cannot_create_user'
		end
	end

	def destroy
		user = User.find(session[:user_id])
		if session[:user_id] then session[:user_id] = nil end 
	end	
end
