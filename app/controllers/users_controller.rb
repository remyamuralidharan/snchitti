class UsersController < ApplicationController
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)
		if @user.save
			flash[:message] = "User Saved Successfully"
			render 'new'
		else
			flash[:message] = @user.errors.full_messages.to_sentence
			redirect_to root_path
		end
	end
end
