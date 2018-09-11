class UserHabitSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :habit_id, :dates

  belongs_to :user
  belongs_to :habit
end
