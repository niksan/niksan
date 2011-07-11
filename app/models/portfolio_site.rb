class PortfolioSite < ActiveRecord::Base
  belongs_to :portfolio
  belongs_to :site
end
