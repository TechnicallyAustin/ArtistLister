class CreatePlaylistSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :playlist_songs do |t|
      t.belongs_to :user
      t.belongs_to :playlist

    end
  end
end
