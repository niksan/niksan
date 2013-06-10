class SearchResult
  require 'net/http'
  
  class SearchResult < StandardError; end
  
  def initialize(keywords, website)
    raise TypeError unless keywords.is_a?(Array)
    @keywords = keywords.map { |kw| kw.to_s }
    @website = website
  end

end
