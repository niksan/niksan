class Article < ActiveRecord::Base
  has_many :tags, :through => :link_tags
  has_many :link_tags, :as => :tagged

  validates :title, :presence => true

  
  def to_param
    "#{id}-#{title}"
  end

end
