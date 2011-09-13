class SitesController < ApplicationController

  def index
		redirect_to portfolio_index_path, :status => 301
  end

  def show
		@site = Site.find(params[:id])
  end

end
