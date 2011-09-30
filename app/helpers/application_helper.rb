module ApplicationHelper

  def article_permalink(article)
    '/articles/' + article.to_s + '-' + Article.find(article).permalink
  end

end
