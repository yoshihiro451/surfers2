class AddDetailsToChats < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :user_id, :integer
    add_column :chats, :comment, :text
  end
end
