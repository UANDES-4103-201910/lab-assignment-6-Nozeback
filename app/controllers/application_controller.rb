class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index

  end

  def current_user
	#complete this method
	@user=User.new(cookies[:user])
  end

  def is_user_logged_in?
	#complete this method
  	logged_in = false
	if current_user != nil 
	        logged_in then true
	else 
	        redirect_to root_path 
	end 
  end
end
