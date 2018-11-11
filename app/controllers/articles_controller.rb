class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  end

  def new
  	@article = Article.new()
  end

  def show
  end

  def create
  	@article = Article.new(
  		title: params[:title],
  		content: params[:content]
  		)
	if @article.save
		flash[:notice] = "記事を投稿しました！"
		flash[:posted] = ""
		redirect_to("/")
	else
		render("articles/new")
	end
  end
end
