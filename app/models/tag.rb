# encoding: utf-8
class Tag < ActiveRecord::Base

  before_create :set_permalink

  has_many :link_tags, :dependent => :destroy, :after_remove => :decrement_link_tags_count
  has_many :articles, :through => :link_tags, :source => :tagged, :source_type => 'Article'
  has_many :posts, :through => :link_tags, :source => :tagged, :source_type => 'Post'

  validates :name, :presence => true

  permalink :name, :to_param => %w(id permalink)

  def decrement_link_tags_count
    flash[:error] << 'notice'
    Tag.reset_column_information
    Tag.find_each do |m|
      Tag.reset_counters m.id, :link_tags
    end
  end

  private
    
    def set_permalink
      self.permalink = Russian.translit(self.name).mb_chars.downcase.gsub(/[^0-9а-яa-z]+/, ' ').strip.gsub(' ', '-').to_s
    end

end
