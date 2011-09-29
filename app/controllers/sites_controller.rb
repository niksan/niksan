class SitesController < ApplicationController

  def index
    redirect_to portfolio_index_path, :status => 301
  end

  def show
    redirect_to Site.find(params[:id].to_i), :status => 301 unless params[:id].grep(/[0-9]+-[a-z-]+/).size > 0
    @site = Site.includes(:technologies).find(params[:id])
  end

end
