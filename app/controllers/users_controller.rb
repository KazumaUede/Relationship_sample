class UsersController < ApplicationController
  def index
    @users = User.where("sex != ?", current_user.sex)
  end
end
