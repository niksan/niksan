class ArticlesController < ApplicationController
  def show
    @article = Article.includes(:tags).find(params[:id])
	@article_id = @article.id # for main_menu indication
  end

end
