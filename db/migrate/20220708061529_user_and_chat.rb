class UserAndChat < ActiveRecord::Migration[7.0]
  def change
    create_table :chats_users do |t|
      t.bigint :user_id
      t.bigint :chat_id

      t.timestamps
    end
  end
end
