class AddSexAndStyleToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :sex, :integer
  	add_column :users, :style, :integer
  end
end
