require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  test POST do
    article = Article.new
    assert article.save
  end
end
