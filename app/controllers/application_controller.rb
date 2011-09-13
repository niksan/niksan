class ApplicationController < ActionController::Base

  before_filter :new_sites, :last_posts, :init_meta_tags
  
  protect_from_forgery

  private
    def new_sites
      @new_sites = Site.limit(2).order('date DESC')
    end

    def last_posts
      @last_posts = Post.includes(:blog).limit(4).order('id DESC')
    end

    def init_meta_tags
      @title = 'NikSan - cоздание, раскрутка сайтов в Воронеже.'
    end

end
