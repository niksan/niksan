class Post < ActiveRecord::Base

  has_many :tags, :through => :link_tags
  has_many :link_tags, :as => :tagged
  belongs_to :blog

  validates :title, :presence => true
  validates :date, :presence => true
  validates :short, :presence => true
  validates :body, :presence => true

  permalink :name, :to_param => %w(id permalink)

=begin
  before_save :set_permalink
  
  def to_param
    "#{id}-#{permalink}"
  end

  private
    
    def set_permalink
      self.permalink = Russian.translit(self.title).mb_chars.downcase.gsub(/[^0-9а-яa-z]+/, ' ').strip.gsub(' ', '-').to_s
    end
=end
end
