class RenameModel < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :models, :users
  end

  def self.down
    rename_table :users, :models
  end
end
