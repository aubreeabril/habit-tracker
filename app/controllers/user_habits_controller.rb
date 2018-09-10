class UserHabitsController < ApplicationController
  before_action :find_user_habit, only: [:update, :show]

  def index
    @user_habits = UserHabit.all
    render json: @user_habits
  end

  def show
    render json: @user_habit
  end

  private

  def user_params
    params.require(:user_habit).permit(:user_id, :habit_id)
  end

  def find_user_habit
    @user_habit = UserHabit.find(params[:id])
  end
end
