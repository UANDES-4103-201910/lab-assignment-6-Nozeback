class RegistrationsController < ApplicationController
	def new
	
	end

	def create
	    #complete this method
	    @user=User.new(params.require[:name], params.require[:last_name], params.require[:email], params.require[:password], params.require[:phone])
	    if @user.save
	        flash[:notice] = "You have successfully created a new user."
                redirect_to root_url
            else
                flash[:notice] = "there was an error on the registration process, please fill the required info with the adecuated format and try again or desist from registering on this site"
            end
	end
end
