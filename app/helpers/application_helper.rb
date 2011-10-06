module ApplicationHelper

  def article_permalink(article)
    '/articles/' + article.to_s + '-' + Article.find(article).permalink
  end

  def rss_button
    link_to image_tag('blog/rss_bottle.png'), blog_index_path(:rss), :id => 'rss_bottle'
  end

end
