class ArticlesController < ApplicationController
  include AjaxHelper
  before_action :request_password, only: [:new, :list, :edit, :edit_raw]
  before_action :set_article, only: [:show, :edit, :update, :destroy, :edit_raw]
  protect_from_forgery except: :authorize

  def index
    @divisions = ["jomon", "yayoi", "kofun", "asuka", "heian", "kamakura", "muromachi", "azuchi", "edofirst", "edolast", "meiji", "taisho", "showa", "heisei"]
    @regions = ["saga", "sanshin", "kito", "karamatsu", "isai"]
  	@articles = Article.where(hidden: 0).all
  end

  def filter
    @divisions = ["jomon", "yayoi", "kofun", "asuka", "heian", "kamakura", "muromachi", "azuchi", "edofirst", "edolast", "meiji", "taisho", "showa", "heisei"]
    @regions = ["saga", "sanshin", "kito", "karamatsu", "isai"]

    if params[:region]
      @region = params[:region]
      @svg_category = params[:region]
    elsif params[:category]
      @category = params[:category]
      @svg_category = params[:category]
    else
      @svg_category = "all"
    end

  end

  def content
    @division = params[:division]
    if params[:id]
      @article = Article.find(params[:id])
    else
      @article = Article.where(division: params[:division]).order(created_at: :desc).last
    end
  end

  def list
    @articles = Article.all.order(created_at: :desc)
  end

  def new
  	@article = Article.new()
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to list_path, notice: "記事を投稿しました"
    else
      render("articles/new")
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def edit_raw
    @article = Article.find(params[:id])
  end

  def update
    if @article.update(article_params)
      redirect_to list_path, notice: "記事を編集しますた"
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to list_path
  end


  #ログイン関係

  def login
  end

  def authorize
    if params[:password] == ENV['LOGIN_PASSWORD']
      @current_user = Mochi.new
      @current_user.save
      session[:mochi_id] = @current_user.id
      redirect_to :root
    else
      render 'login'
    end
  end

  def logout
    session[:mochi_id] = nil
    Mochi.last.destroy
    redirect_to :root
  end

  def void
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(
      :title, :category, :region, :division, :year, :hidden, :content, :coordinateX, :coordinateY
    )
  end

  def request_password
    unless session[:mochi_id]
      redirect_to authorization_path
    end
  end

end
