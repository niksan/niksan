# encoding: utf-8
class Portfolio < ActiveRecord::Base
  has_many :portfolio_sites, :dependent => :destroy
  has_many :sites, :through => :portfolio_sites

  validates :name, :presence => true

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

end
