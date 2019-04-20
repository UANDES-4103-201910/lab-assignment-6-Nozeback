class SessionsController < ApplicationController
	def new
	end

	def create
		#complete this method
		if user=User.authenticate(params[:email],params[:password])
		        session[:current_user_id]=user.id
		        flash[:notice]="you have succesfully logged in"
		        redirect_to root_url
		else
		        flash[:notice]="please enter a valid user and password"
	        end
	end

	def destroy
		#complete this method
		session.delete(:current_user_id)
		@current_user=nil
		flash[:notice]="you have logged out"
		redirect_to root_url
	end
end
