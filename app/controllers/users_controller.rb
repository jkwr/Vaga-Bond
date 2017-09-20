class UsersController < ApplicationController
	def index
		@users = User.all 
	end

	def new
		@user = User.new
	end 

	def create
		@user = User.create(user_params)

		redirect_to root_path
	end 
	def show
		@user = User.find_by_id(params[:id])
	end


  # t.string "email"
  #   t.string "first_name"
  #   t.string "last_name"
  #   t.string "password_digest"
  #   t.string "prof_image"

	private
	def user_params
		params.require(:user).permit(:email, :first_name, :last_name, :password, :prof_image, :hometown)
	end 

end
