class SitesController < ApplicationController

  def index
		@sites = Site.order('date DESC')
  end

  def show
		@site = Site.find(params[:id])
  end

end
