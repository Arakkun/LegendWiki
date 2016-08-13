class ArtistCharacter < ActiveRecord::Migration[5.0]
  def change
    rename_column :comments, :character_id, :artist_id
  end
end
