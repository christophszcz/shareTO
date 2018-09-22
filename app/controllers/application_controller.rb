class ApplicationController < ActionController::Base
  helper_method :current_user, :user_signed_in?

  def user_signed_in?
  	if current_user then true else false end
	end

  def current_user
  	if session[:user_id]
  		@current_user ||= User.find(session[:user_id])
  	end
  end
end
