# encoding: utf-8
class Blog < ActiveRecord::Base

  before_create :set_permalink

  has_many :posts

  validates :name, :presence => true
  
  permalink :name, :to_param => %w(id permalink)

  private
    
    def set_permalink
      self.permalink = Russian.translit(self.name).mb_chars.downcase.gsub(/[^0-9а-яa-z]+/, ' ').strip.gsub(' ', '-').to_s
    end

end
