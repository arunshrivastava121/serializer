require 'date'
class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :recently_joined?

  # note serializer allow only one nesting of associations.
  has_many :chats

  # The serializer will look for its own methods
  # before checking the objects attributes.
  # This means that you could override an object’s attributes
  # if you define a method in the serializer with the same name.

  def recently_joined?
    Date.today.prev_month < object.created_at
  end
end
