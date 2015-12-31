class ArticlesController < ApplicationController
  def index
    @articles = Article.page(params[:page]).per(10)
  end

  def show
    @article = Article.find(params[:id])
    @comments = Comment.page(params[:page]).per(5)
  end
end
