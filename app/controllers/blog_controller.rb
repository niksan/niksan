class BlogController < ApplicationController
  def index
  end

  def show
    @post = Post.find(params[:id])
    @tags = @post.tags
  end

end
