class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
	@user = User.create(user_params)
    login(@user)
    redirect_to @user
	end
	def show
		@user = User.find_by_id(session[:user_id])
		
	end
	def update
		@user = User.find_by_id(session[:user_id])
		@user.update(first_name: user_params[:first_name], last_name: user_params[:last_name], hometown: user_params[:hometown], prof_image: user_params[:prof_image])
		redirect_to @user
	end
	def edit
		@user = User.find_by_id(session[:user_id])
	end



	private
	def user_params
		params.require(:user).permit(:email, :first_name, :last_name, :password, :prof_image, :hometown)
	end

end
