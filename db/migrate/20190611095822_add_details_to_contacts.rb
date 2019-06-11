class AddDetailsToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :user_id, :integer
    add_column :contacts, :coment, :text
    add_column :contacts, :title, :string
  end
end
