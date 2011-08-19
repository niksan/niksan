class SitesController < ApplicationController

  def index
		@sites = Site.order(:date)
  end

  def show
  end

end
