class Article < ActiveRecord::Base
  has_many :tags, :through => :link_tags
  has_many :link_tags, :as => :tagged

  validates :title, :presence => true

  permalink :title, :to_param => %w(id permalink)

=begin
  before_create :set_permalink
  
  def to_param
    "#{id}-#{permalink}"
  end

  private
    
    def set_permalink
      self.permalink = Russian.translit(self.title).mb_chars.downcase.gsub(/[^0-9а-яa-z]+/, ' ').strip.gsub(' ', '-').to_s
    end
=end

end
