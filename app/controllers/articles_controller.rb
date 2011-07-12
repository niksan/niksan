class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
    @tags = @article.tags
  end

end
