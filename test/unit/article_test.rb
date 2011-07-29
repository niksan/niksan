require '../test_helper'

class ArticleTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "save_without_title" do
    article = Article.new
    assert !article.save, 'Saved article without title'
  end
end
