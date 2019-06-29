class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|

      t.timestamps
    end
  end
end
