class AddConfirmableToDeviseV1 < ActiveRecord::Migration[5.0]
  def change
    change_table(:users) do |t| 
      t.boolean :confirmable, :default => false
    end
    add_column :users, :confirmation_token, :string
    add_index  :users, :confirmation_token, :unique => true 
  end
end
