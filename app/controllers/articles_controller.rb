class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @comments = Comment.all
  end

  def show
    @article = Article.find(params[:id])
    @comments = Comment.all
  end
end
