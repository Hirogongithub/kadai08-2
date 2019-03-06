class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :description
      t.integer :topic_id
      
      t.timestamps
    end
  end
end
