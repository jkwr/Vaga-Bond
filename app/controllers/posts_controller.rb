class PostsController < ApplicationController
	def new
		@post = Post.new
		@city_id = get_city_from_name(params[:city_name]).id
	end

	def create
		post = Post.create(post_params)
		if post.save
			redirect_to user_path current_user
		else
			flash[:error] = "Please input a valid post"
			redirect_to new_posts_path
		end 
	end

	def show
		@post = Post.find_by_id(params[:id])

	end

	def update
		@post = Post.find_by_id(params[:id])
		@post.update(title: post_params[:title], description: post_params[:description])
		redirect_to post_path

	end

	def edit
		@post = Post.find_by_id(params[:id])
		if @post.user_id != session[:user_id]
			flash[:notice] = "Not the user for this post."
			redirect_to post_path
		end
	end

	def destroy
		@post = Post.find(params[:id])
		if @post.user_id != session[:user_id]
			flash[:notice] = "Not the user for this post."
			redirect_to user_path current_user
		else
	 		@post.destroy
	 		redirect_to user_path current_user
	end
	end

	private
	def post_params
		params.require(:post).permit(:title, :description, :user_id, :city_id)
	end

end
