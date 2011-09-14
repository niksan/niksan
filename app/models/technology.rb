class Technology < ActiveRecord::Base
  has_many :site_technologies, :dependent => :destroy
  has_many :sites, :through => :site_technologies

  validates :name, :presence => true, :uniqueness => true
end
