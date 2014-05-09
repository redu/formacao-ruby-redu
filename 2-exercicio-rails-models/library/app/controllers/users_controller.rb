class UsersController < ApplicationController
  respond_to :html, :js, only: [:create]

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
    @user = User.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(permitted_user_params)
    @user.save

    respond_with(@user, location: users_path)
  end

  private

  def permitted_user_params
    params[:user].permit(:first_name, :email)
  end
end
