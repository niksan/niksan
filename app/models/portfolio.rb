# encoding: utf-8
class Portfolio < ActiveRecord::Base
  has_many :portfolio_sites, dependent: :destroy
  has_many :sites, through: :portfolio_sites

  validates :name, presence: true

  path = ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
  url = "/system/:attachment/:id/:style/:basename.:extension"
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, url: url, path: path

end
