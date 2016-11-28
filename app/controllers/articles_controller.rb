class ArticlesController < ApplicationController
  #When user click on the title, the browser will be directed to this URL: http://localhost:3000/articles/1. We use the number on the end of the URL to find the article in the database.
  # "find" is a class method. params[:id] is the key

  def index
    # instance var: we want the list of articles to be accessible from both the controller and the view
    # in Rails' controller, there's a hack which allows instance var to be automatically transferred from the controller to the object which renders in the view template
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])

  end

end
