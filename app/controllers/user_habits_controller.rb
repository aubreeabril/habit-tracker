class UserHabitsController < ApplicationController
  before_action :find_user_habit, only: [:update, :show]

  def index
    @user_habits = UserHabit.all
    render json: @user_habits
  end

  def show
    render json: @user_habit
  end

  def update
    @user_habit.update(user_habit_params)
    render json: @user_habit
  end

  private

  def user_habit_params
    params.permit(:user_id, :habit_id, :dates)
  end

  def find_user_habit
    @user_habit = UserHabit.find(params[:id])
  end
end
