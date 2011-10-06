module ApplicationHelper

  def title
    @title = 'NikSan - cоздание, раскрутка сайтов в Воронеже.'
  end

  def article_permalink(article)
    '/articles/' + article.to_s + '-' + Article.find(article).permalink
  end

  def rss_button
    link_to image_tag('blog/rss_bottle.png'), blog_index_path(:rss), :id => 'rss_bottle'
  end

end
