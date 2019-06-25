class AddColumnChats < ActiveRecord::Migration[5.2]
  def change
  	add_column :chats, :topic_id, :integer
  end
end
