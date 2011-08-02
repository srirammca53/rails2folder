class ArticlesController < ApplicationController
def create
    @user = User.find(params[:user_id])
    @article = @user.articles.create(params[:article])
    redirect_to user_path(@user)
  end
end
