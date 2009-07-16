class UsersController < ApplicationController

  def index
    @users = User.find(:all)
  end

  def show
    @user = User.find_by_user_nicename(params[id])
  end

  def new
  end

  def edit
    @user = User.find_by_user_nicename(params[id])
  end

  def update
  end

  def destroy
  end

  def create
  end

end
