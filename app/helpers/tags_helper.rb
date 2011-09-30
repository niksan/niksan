module TagsHelper

  def tagged_name(tagged)
    if tagged.respond_to?(:title)
      tagged.title
    elsif tagged.respond_to?(:name)
      tagged.name
    else
      'Ссылка'
    end
  end

  def tagged_body
  end
  
end
