class Site < ActiveRecord::Base
  has_many :portfolio_sites
  has_many :portfolios, :through => :portfolio_sites

  validates :name, :presence => true
  validates :url, :presence => true
  
  has_attached_file :image, :styles => { :medium => "800x600>", :small => "280x300>", :thumb => "170x400>" }
end
