class ApplicationController < ActionController::Base

  before_filter :new_sites, :last_posts
  
  protect_from_forgery

  private
    def new_sites
      @new_sites = Site.limit(2).order('id DESC')
    end

    def last_posts
      @last_posts = Post.limit(4).order('id DESC')
			flash[:notice] = 'Oops!'
    end
end
