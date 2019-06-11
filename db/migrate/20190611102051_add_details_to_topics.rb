class AddDetailsToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :user_id, :integer
    add_column :topics, :title, :string
    add_column :topics, :comment, :text
  end
end
