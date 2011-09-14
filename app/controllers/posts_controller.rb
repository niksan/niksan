class PostsController < ApplicationController

  def index
    redirect_to blog_path(params[:blog_id]), :status => 301
  end

  def show
    @post = Post.includes(:tags).find(params[:id])
  end

end
