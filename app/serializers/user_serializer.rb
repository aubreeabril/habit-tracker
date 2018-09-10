class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :age

  has_many :habits
end
