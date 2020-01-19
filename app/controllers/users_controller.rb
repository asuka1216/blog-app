class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @articles = user.articles.page(params[:page]).per(12).order("created_at DESC")
  end
end
