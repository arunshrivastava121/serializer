class MessageSerializer < ActiveModel::Serializer
  attributes :id, :msg, :chat_id
  belongs_to :user
end
