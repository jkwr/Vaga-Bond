module SessionsHelper
	def login(user)
		session[:user_id] = @user.id
		@current_user = user
	end

	def current_user
    	@current_user ||= User.find_by_id(session[:user_id])
  	end

	def logged_in?
		!current_user.nil?
	end
#pretty sure this is a pointless method as its being done in sessions controller destroy method.
#I will leave it here incase I am wrong, but i tested and it didnt break anything
	# def logout
	# 	session[:user_id] = nil
 #  		@current_user = nil
	# end
end
