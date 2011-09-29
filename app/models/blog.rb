class Blog < ActiveRecord::Base
  has_many :posts

  validates :name, :presence => true
  
  permalink :name, :to_param => %w(id permalink)

=begin
  before_save :set_permalink
  
  def to_param
    "#{id}-#{permalink}"
  end

  private
    
    def set_permalink
      self.permalink = Russian.translit(self.name).mb_chars.downcase.gsub(/[^0-9а-яa-z]+/, ' ').strip.gsub(' ', '-').to_s
    end
=end
end
