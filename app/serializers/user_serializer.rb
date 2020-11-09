class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :age
  has_many :entries
  has_many :comments
end
