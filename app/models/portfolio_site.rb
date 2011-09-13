class PortfolioSite < ActiveRecord::Base
  belongs_to :site
  belongs_to :portfolio
end
