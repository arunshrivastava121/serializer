class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :msg
      t.string :user_id
      t.string :chat_id

      t.timestamps
    end
  end
end
