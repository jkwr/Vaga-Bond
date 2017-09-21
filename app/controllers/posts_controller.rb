class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  def create
    @post = Post.create(post_params)
    @post.city_name = params[:city_name]
    redirect_to '/cities/' + params[:city_name]
  end


private

def post_params
post_param = params.require(:post).permit(:title, :description)
post_param.merge(:city_name => params[:city_name])
end
end
