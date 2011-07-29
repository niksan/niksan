class Tag < ActiveRecord::Base
  has_many :link_tags, :dependent => :destroy, :after_remove => :decrement_link_tags_count
  has_many :articles, :through => :link_tags, :source => :tagged, :source_type => 'Article'
  has_many :posts, :through => :link_tags, :source => :tagged, :source_type => 'Post'

  validates :name, :presence => true

  def decrement_link_tags_count
    flash[:error] << 'notice'
    Tag.reset_column_information
    Tag.find_each do |m|
      Tag.reset_counters m.id, :link_tags
    end
  end

end
