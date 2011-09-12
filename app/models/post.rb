class Post < ActiveRecord::Base

  has_many :tags, :through => :link_tags
  has_many :link_tags, :as => :tagged
  belongs_to :blog

  validates :title, :presence => true
  validates :date, :presence => true
  validates :short, :presence => true
  validates :body, :presence => true
end
