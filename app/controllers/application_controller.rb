class ApplicationController < ActionController::Base
  helper_method :current_user, :user_signed_in?, :authenticate_user!

  def user_signed_in?
  	if current_user then true else false end
	end

  def current_user
  	if session[:user_id]
  		@current_user ||= User.find(session[:user_id])
  	end
  end

  def authenticate_user!
  	if current_user then true else false end
	end
end
