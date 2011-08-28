class PostsController < ApplicationController

  def index
    @posts = Post.order('date DESC')
  end

  def show
    @post = Post.find(params[:id])
    @tags = @post.tags
  end

end
