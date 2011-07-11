class Article < ActiveRecord::Base
  has_many :tags, :through => :link_tags
  has_many :link_tags, :as => :tagged

  #has_many :tags, :through => :article_tags

  validates :title, :presence => true
end
