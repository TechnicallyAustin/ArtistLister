class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist_name
      t.integer :rating
      t.belongs_to :artist
      
      t.belongs_to :playlist_songs

      t.timestamps
    end
  end
end
