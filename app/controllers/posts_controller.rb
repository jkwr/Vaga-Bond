class PostsController < ApplicationController
	def new
		@post = Post.new
	end

	def create
		post_params = params.require(:post).permit(:title, :description)
		
		post = Post.new(post_params)
		post.user = current_user
		if post.save
			redirect_to user_path current_user
		end 
	end 

	private

	def post_params
		params.require(:post).permit(:title, :description, :user_id, :city_id)
	end
end
