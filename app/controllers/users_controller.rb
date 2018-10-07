class UsersController < ApplicationController
  def index
    @users = User.where("sex != ?", current_user.sex)
  end
  def show
    @user = User.find(params[:id])
    @users = current_user.matchers
  end

    def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers(page: params[:page])
    render 'show_follow'
  end

end
