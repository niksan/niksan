class MainController < ApplicationController

  def index
    @article = Article.find(1)
    @tags = @article.tags
  end

end
