class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params)
  end

  def show
  end

  def edit
  end

  def delete
  end

  def user_params
    params.require(:user).permit(:name, :email, :profile_picture, :about_me, :password)
  end

end