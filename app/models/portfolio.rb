class Portfolio < ActiveRecord::Base
  has_many :portfolio_sites
  has_many :sites, :through => :portfolio_sites

  validates :name, :presence => true
end
