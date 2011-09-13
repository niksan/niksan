class PortfolioSite < ActiveRecord::Base
  belongs_to :site
  belongs_to :portfolio

  validates :name, :presence => true
end
