class SessionsController < ApplicationController

	#log in for
	def new
	end

	#log the person in
	def create
		user = User.find_by_email(params[:email])

		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to images_path # when you log in, it sends you to your personal page
		else
			redirect_to login_path
		end
	end
	
	#log the person out
	def destroy	
		session[:user_id] = nil
		redirect_to '/'
	end
end