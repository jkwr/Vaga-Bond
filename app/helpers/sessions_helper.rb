module SessionsHelper
	def login(user)
		session[:user_id] = @user.id
		@current_user = user
	end
end
