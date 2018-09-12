class UsersController < ApplicationController
  before_action :find_user, only: [:update, :show, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def update
    @user.update(user_params)
    render json: @user
  end

  def destroy
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :gender)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
