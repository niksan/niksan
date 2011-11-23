# encoding: utf-8
class PostsController < ApplicationController

  def index
    redirect_to blog_path(params[:blog_id]), :status => 301
  end

  def show
    redirect_to Post.find(params[:id].to_i), :status => 301 unless params[:id].grep(/[0-9]+-[a-z-]+/).size > 0
    @post = Post.includes(:tags).find(params[:id])
  end

end
