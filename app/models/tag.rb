class Tag < ActiveRecord::Base
  has_many :link_tags, :dependent => :destroy
  has_many :articles, :through => :link_tags, :source => :tagged, :source_type => 'Article'
  has_many :posts, :through => :link_tags, :source => :tagged, :source_type => 'Post'

  validates :name, :presence => true
end
