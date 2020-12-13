class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.integer :rating
      t.belongs_to :artist
      t.belongs_to :playlists

      t.timestamps
    end
  end
end
