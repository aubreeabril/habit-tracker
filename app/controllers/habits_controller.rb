class HabitsController < ApplicationController
  before_action :find_habit, only: [:update, :show]

  def index
    @habit = Habit.all
    render json: @habit
  end

  def show
    render json: @habit
  end

  private

  def user_params
    params.require(:habit).permit(:title, :description)
  end

  def find_habit
    @habit = Habit.find(params[:id])
  end
end
