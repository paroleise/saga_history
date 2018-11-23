class ArticlesController < ApplicationController
  before_action :request_password, only: [:new]
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  protect_from_forgery except: :authorize

  def index
  	@articles = Article.all
  end

  def new
  	@article = Article.new()
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to :root, notice: "記事を投稿しました"
    else
      render("articles/new")
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    if @article.update(article_params)
      redirect_to :root, notice: "記事を編集しますた"
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to :root
  end

  def show
  end


  #ログイン関係
  def authorization
  end

  def authorize
    if params[:password] == ENV['LOGIN_PASSWORD']
      @current_user = Mochi.new
      @current_user.save
      session[:mochi_id] = @current_user.id
      redirect_to :root
    else
      render 'authorization'
    end
  end

  def logout
    session[:mochi_id] = nil
    Mochi.last.destroy
    redirect_to :root
  end


  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def request_password
    unless session[:mochi_id]
      redirect_to authorization_path
    end
  end
end
