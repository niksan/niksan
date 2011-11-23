# encoding: utf-8
class PortfolioController < ApplicationController
  def index
    @sites = Site.includes(:portfolios).order('date DESC')
  end

end
