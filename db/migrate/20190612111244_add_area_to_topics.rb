class AddAreaToTopics < ActiveRecord::Migration[5.2]
  def change
  	add_column :topics, :area, :integer
  end
end
