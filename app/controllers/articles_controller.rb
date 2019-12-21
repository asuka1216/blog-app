class ArticlesController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @articles = Article.includes(:user).page(params[:page]).per(12).order("created_at DESC")
  end

  def new
  end

  def create
    Article.create(image: article_params[:image], text: article_params[:text], user_id: current_user.id)
  end

  private
  def article_params
    params.permit(:image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end