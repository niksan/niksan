class BlogController < ApplicationController

  def index
    @posts = Post.includes(:blog, :tags).order('date DESC')
  end

  def show
    @blog = Blog.find(params[:id])
    @posts = Post.where('blog_id = ?', @blog.id).includes(:tags).order('date DESC')
  end

end
