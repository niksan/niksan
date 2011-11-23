# encoding: utf-8
class TagsController < ApplicationController

  def show
    redirect_to Tag.find(params[:id].to_i), :status => 301 unless params[:id].match(/[0-9]+-[a-z-]+/).size > 0
    @tag = Tag.find(params[:id])
    @link_tags = @tag.link_tags.includes(:tagged).order('created_at DESC')
  end

end
