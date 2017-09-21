class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  def create
    @post = Post.create(post_params)
    @post.city_name = params[:city_name]
  end


private

def post_params
  params.require(:posts).permit(:title, :description)
end
end
