class Article < ActiveRecord::Base

  before_create :set_permalink

  has_many :tags, :through => :link_tags
  has_many :link_tags, :as => :tagged

  validates :title, :presence => true

  permalink :title, :to_param => %w(id permalink)

  private
    
    def set_permalink
      self.permalink = Russian.translit(self.title).mb_chars.downcase.gsub(/[^0-9а-яa-z]+/, ' ').strip.gsub(' ', '-').to_s
    end

end
