class User < ApplicationRecord
 has_many :authored_conversations, class_name: 'Conversation', foreign_key: 'author_id'
has_many :received_conversations, class_name: 'Conversation', foreign_key: 'received_id'
has_many :personal_messages, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


def name
  email.split('@')[0]
end
end


