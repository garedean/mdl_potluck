class Admin::UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @new_user = User.new(user_params)
    @new_user.save
    redirect_to admin_users_path
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to admin_users_path, notice: "User updated!"
  end

  def destroy
    @user.destroy
    redirect_to admin_users_path, notice: "User deleted!"
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :password)
    end
end
