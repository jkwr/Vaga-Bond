class User < ApplicationRecord
	has_secure_password

	def self.confirm(user_params)
		@user = User.find_by({email: user_params[:email]})
		@user ? @user.authenticate(user_params[:password]) : false
end

has_many :posts, dependent: :destroy

end
