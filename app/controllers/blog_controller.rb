# encoding: utf-8
class BlogController < ApplicationController

  def index
    @posts = Post.includes(:blog, :tags).order('date DESC')
    respond_to do |format|
      format.html
      format.rss { render :layout => false } #index.rss.builder
    end
  end

  def show
    redirect_to Blog.find(params[:id].to_i), :status => 301 unless params[:id].match(/[0-9]+-[a-z-]+/).size > 0
    @blog = Blog.find(params[:id])
    @posts = Post.where('blog_id = ?', @blog.id).includes(:tags).order('date DESC')
  end

end
