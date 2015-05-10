class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(users_params)
		if @user.save
			sign_in @user
			flash[:success] = "Welcome"
      		redirect_to @user
		else
			render 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(users_params)
			flash[:success] = "Profile updated"
			sign_in @user
			redirect_to @user
		else 
			render 'edit'
		end
	end

	private
	def users_params
 		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
end