class HabitSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  has_many :user_habits
  has_many :users
end
