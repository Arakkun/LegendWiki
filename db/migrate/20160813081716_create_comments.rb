class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :user_id 
      t.integer :character_id
      t.string :comment
      t.timestamps :posted
    end
  end
end
