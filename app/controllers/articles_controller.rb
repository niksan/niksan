class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
		@article_id = @article.id # for main_menu indication
    @tags = @article.tags
  end

end
