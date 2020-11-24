class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.name :string
      t.artist_id :belongs_to
      t.playlist_id :belongs_to

      t.timestamps
    end
  end
end
