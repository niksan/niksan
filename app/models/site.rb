class Site < ActiveRecord::Base

  before_create :set_permalink

  has_many :site_technologies, :dependent => :destroy
  has_many :technologies, :through => :site_technologies
  has_many :portfolio_sites, :dependent => :destroy
  has_many :portfolios, :through => :portfolio_sites

  validates :name, :presence => true
  validates :url, :presence => true
  

  has_attached_file :image, :styles => { :medium => "800x600>", :small => "280x300>", :thumb => "170x400>" }

  permalink :name, :to_param => %w(id permalink)

  private
    
    def set_permalink
      self.permalink = Russian.translit(self.name).mb_chars.downcase.gsub(/[^0-9а-яa-z]+/, ' ').strip.gsub(' ', '-').to_s
    end

end
