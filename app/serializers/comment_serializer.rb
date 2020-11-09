class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :user_id, :entry_id
end
