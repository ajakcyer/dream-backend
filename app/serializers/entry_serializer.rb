class EntrySerializer < ActiveModel::Serializer
  attributes :id, :description, :user_id, :public, :created_at, :title
  has_many :comments
end
