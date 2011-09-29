class ArticlesController < ApplicationController

  def show
    redirect_to Article.find(params[:id].to_i), :status => 301 unless params[:id].grep(/[0-9]+-[a-z-]+/).size > 0
    @article = Article.includes(:tags).find(params[:id])
	@article_id = @article.id # for main_menu indication
  end


end
