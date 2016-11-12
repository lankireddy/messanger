class CreateConversations < ActiveRecord::Migration[5.0]
	add_index :conversations, [:author_id, :receiver_id], unique: true
end