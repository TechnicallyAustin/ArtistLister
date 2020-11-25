class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.belongs_to :artist_id
      t.belongs_to :playlist_id

      t.timestamps
    end
  end
end
