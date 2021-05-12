class CreatePlaylistSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :playlist_songs do |t|
      t.belongs_to :user
      t.belongs_to :playlist
      t.text :song_name
      t.text :song_artist_name
      t.integer :song_rating


    end
  end
end
