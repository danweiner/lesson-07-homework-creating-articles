class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def new
    @article = Article.new
  end
  def create
    # Make the new character record
    puts 'Creating article'
    @article = Article.create(article_params)

    # redirect the user
    redirect_to articles_url
  end

  private

  def article_params
    # Return a filtered params hash with only the attributes we allow through
     params.require(:article).permit(:title, :body)
  end

end
