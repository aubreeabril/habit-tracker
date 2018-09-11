class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :age

  has_many :user_habits
  has_many :habits
end
