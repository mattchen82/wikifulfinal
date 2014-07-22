class WelcomeController < ApplicationController
  def index
    @articles = Article.newest_first.limit(5)
  end
end
