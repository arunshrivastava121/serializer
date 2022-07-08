class ChatSerializer < ActiveModel::Serializer
  attributes :id, :title, :messages

  def messages
    object.messages.each do |message|
      msg = ActiveModelSerializers::SerializableResource.new(message, {serializer: MessageSerializer}).as_json
      return msg
    end
  end
end
