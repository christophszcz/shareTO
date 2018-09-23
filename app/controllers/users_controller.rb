class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		email = params[:user][:email]
		password = params[:user][:password]
		password_confirmation = params[:user][:password_confirmation]
		location = params[:user][:location]
		geo_location = Place.process_location(location)
		user = User.new(email: email, password: password, password_confirmation: password_confirmation, moderator: false, latitude: geo_location[:lat], longitude: geo_location[:lng])

		if user.save 
			session[:user_id] = user.id
			redirect_to user_introduction_path
		else
			render 'errors/cannot_create_user'
		end
	end

	def edit
		user_id = params[:user_id].to_i
		@user = User.find(user_id)
	end

	def update
		user_id = params[:user_id].to_i
		user = User.find(user_id)

		email = params[:user][:email]
		location = params[:user][:location]
		geo_location = Place.process_location(location)

		if user.update(email: email, latitude: geo_location[:lat], longitude: geo_location[:lng]) then redirect_to root_path else render 'errors/could_not_update_profile' end
	end

	def introduction
	end
end
