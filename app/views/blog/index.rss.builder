xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "NikSan - блог сайтостроителя"
    xml.description "веб разработка на Ruby on Rails"
    xml.link blog_index_path(:rss)

    for post in @posts
      xml.item do
        xml.title post.title
        xml.description post.short
        xml.pubDate post.date.to_s(:rfc822)
        xml.link post_url(post)
        xml.guid post_url(post)
      end
    end
  end
end
